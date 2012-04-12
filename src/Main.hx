package;

import processing.core.PApplet;
import processing.core.PConstants;
import processing.core.PFont;
import processing.core.PVector;
using processing.core.PVector;
import ddf.minim.Minim;
import ddf.minim.AudioPlayer;
import ddf.minim.analysis.FFT;
import ddf.minim.analysis.BeatDetect;
import org.casalib.util.NumberUtil;
using Std;

// easing equations:
// t: Current time (in frames or seconds).
// b: Starting value.
// c: Change needed in value.
// d: Expected easing duration (in frames or seconds).
import feffects.easing.Quad;
import feffects.easing.Bounce;
import feffects.easing.Expo;

#if !jvm
private typedef Single = Float;
#end

typedef RGB = {
    var r:Float;
    var g:Float;
    var b:Float;
}

typedef HSL = {
    var h:Float;
    var s:Float;
    var l:Float;
}

class Pt extends PVector {
	public function new():Void {
		super(0, 0, 0);
		t = 0;
	}
	
	public var t:Float;
	public var target:PVector;
	public var size:Float;
}

class Main extends PApplet {
	static var end = 400 * Math.PI;
	
	static var haxeRGB = {
		r: 0xF1 / 255.0,
		g: 0x89 / 255.0,
		b: 0x40 / 255.0
	}
	
	static var haxeHSL = rgb2hsl(haxeRGB);
	
	var font:PFont;
	var fontSize:Float;
	var minim:Minim;
	var jingle:AudioPlayer;
	var fft:FFT;
	var beat:BeatDetect;
	
	var pts:Array<Array<Pt>>;
	var pt:Pt;
	
	override public function setup():Void {
		size(800, 600, PConstants.P3D);
		frameRate(60);
		smooth();
		
		font = loadFont("CourierNew36.vlw");
		textFont(font, fontSize = 12);
		
		minim = new Minim(this);
		jingle = minim.loadFile("java.mp3", 512);
		jingle.loop();
		fft = new FFT(jingle.bufferSize(), jingle.sampleRate());
		beat = new BeatDetect(jingle.bufferSize(), jingle.sampleRate());
		beat.setSensitivity(100);
		
		pts = [];
		for (i in 0...fft.specSize()) {
			pts.push(new Array<Pt>());
		}
	}
	
	override public function draw():Void {
		background(0, 0, 0);
		stroke(255, 255, 255, 255);
		
		var ty = fontSize;
		fill(255, 255, 255, 255);
		beat.detect(jingle.mix.toArray());
		if (beat.isHat()) text("isHat", 0, ty); ty += fontSize;
		if (beat.isKick()) text("isKick", 0, ty); ty += fontSize;
		if (beat.isSnare()) text("isSnare", 0, ty); ty += fontSize;
		var ons = [];
		var nums = [];
		for (i in 0...27) {
			if (beat.isOnset(i)) ons.push("##");
			else ons.push("--");
			
			nums.push(i < 10 ? "0" + i : i.string());
		}
		text(nums.join(","), 0, ty); ty += fontSize;
		text(ons.join(","), 0, ty); ty += fontSize;
		
		
		fft.forward(jingle.mix.toArray());
		for (i in 0...fft.specSize()) {
			line(i, height, 0, i, height - fft.getBand(i)*4, 0);
		}
		
		if (mouseX > 0 && mouseX < fft.specSize()) {
			text(mouseX + "(" + fft.indexToFreq(mouseX) + "Hz): " + Math.pow(fft.getBand(mouseX), 0.1) * 10, 0, ty); ty += fontSize;
		}
		
		pushMatrix();
		noStroke();
		translate(width * 0.5, height * 0.5, 0);
		for (i in 0...27) {
			var hsl = {
				h: map(i, 0, 27, 270, 360),
				s: 1.0,
				l: 0.5
			};
			
			var v = beat.isOnset(i) ? jingle.mix.level() : 0;
			var need = v > 0;
			while (need || Math.pow(v, 0.2) > Math.random()*10) {
				var d = new PVector(0,0,0);
				var v = v * 1000;
				d.x = NumberUtil.randomWithinRange(-v, v);
				d.y = NumberUtil.randomWithinRange(-v, v);
				d.limit(v);
				var pt = new Pt();
				pt.target = d;
				pts[i].push(pt);
				
				need = false;
			}
			
			
			
			for (pt in pts[i]) {
				if (pt.t > 1) {
					pts[i].remove(pt);
				}
				var x = Quad.easeIn(pt.t, pt.x, pt.target.x - pt.x, 1);
				var y = Quad.easeIn(pt.t, pt.y, pt.target.y - pt.y, 1);
				hsl.l = Expo.easeIn(pt.t, 0, 1, 1);
				var rgb = hsl2rgb(hsl);
				fill(rgb.r * 255, rgb.g * 255, rgb.b * 255, pt.t * 255);
				ellipse(x, y, 15, 15);
				pt.t += 0.05;
			}
		}
		popMatrix();
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
	
	//http://haxe.org/doc/snip/colorconverter
	public static function hsl2rgb(hsl:HSL): RGB {
	    var q:Float = if (hsl.l < 1.0 / 2.0)
	    {
	        hsl.l * (1 + hsl.s);
	    } else
	    {
	        hsl.l + hsl.s - (hsl.l * hsl.s);
	    }
	    
	    var p:Float = 2 * hsl.l - q;
	    
	    var hk:Float = (hsl.h % 360) / 360.0;
	    
	    var tr:Float = hk + 1.0 / 3.0;
	    var tg:Float = hk;
	    var tb:Float = hk - 1.0 / 3.0;
	    
	    var tc:Array<Float> = [tr,tg,tb];
	    for (n in 0...tc.length)
	    {
	        var t:Float = tc[n];
	        if (t < 0) t += 1;
	        if (t > 1) t -= 1;
	        tc[n] = if (t < 1.0 / 6.0)
	        {
	            p + ((q - p) * 6 * t);
	        } else if (t < 1.0 / 2.0)
	        {
	            q;
	        } else if (t < 2.0 / 3.0)
	        {
	            p + ((q - p) * 6.0 * (2.0 / 3.0 - t));
	        } else
	        {
	            p;
	        }
	    }
	    
	    return {
	        r: tc[0],
	        g: tc[1],
	        b: tc[2],
	    }
	}
	
	public static function maxRGB(rgb:RGB) : Float
    {
        return Math.max(rgb.r, Math.max(rgb.g, rgb.b));
    }
    
    public static function minRGB(rgb:RGB) : Float
    {
        return Math.min(rgb.r, Math.min(rgb.g, rgb.b));
    }
	
	public static function rgb2hsl(rgb:RGB):HSL {
        var max:Float = maxRGB(rgb);
        var min:Float = minRGB(rgb);
        var add:Float = max + min;
        var sub:Float = max - min;
        
        var h:Float = if (max == min)
        {
            0;
        } else if (max == rgb.r)
        {
            (60 * (rgb.g - rgb.b) / sub + 360) % 360;
        } else if (max == rgb.g)
        {
            60 * (rgb.b - rgb.r) / sub + 120;
        } else if (max == rgb.b)
        {
            60 * (rgb.r - rgb.g) / sub + 240;
        }
        
        var l:Float = add / 2;
        
        var s:Float = if (max == min)
        {
            0;
        } else if (l <= 1 / 2)
        {
            sub / add;
        } else
        {
            sub / (2 - add);
        }
        
        return {
            h: h,
            s: s,
            l: l,
        }
        
    }
}