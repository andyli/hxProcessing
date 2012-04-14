package;

import processing.core.PApplet;
import processing.core.PConstants;
import processing.core.PFont;
import processing.core.PVector;
import toxi.color.TColor;
import toxi.geom.Triangle3D;
import toxi.geom.Triangle2D;
import toxi.geom.Vec3D;
import toxi.geom.Vec2D;
import toxi.geom.Line2D;
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

class Demo1 extends PApplet {
	static var end = 400 * Math.PI;
	
	static var color = TColor.newHex("f18940");
	
	var font:PFont;
	var fontSize:Float;
	
	var minim:Minim;
	var jingle:AudioPlayer;
	var beat:BeatDetect;
	
	var initPts:Array<Vec3D>;
	var triangles:Array<Array<Triangle3D>>;
	var triangles_v:Array<Array<Float>>;
	
	var rots:Array<Single>;
	
	function drawTri(tri:Triangle3D):Void {
		beginShape();
		vertex(tri.a.x(), tri.a.y(), tri.a.z());
		vertex(tri.b.x(), tri.b.y(), tri.b.z());
		vertex(tri.c.x(), tri.c.y(), tri.c.z());
		endShape(PConstants.CLOSE);
	}
	
	override public function setup():Void {
		size(800, 600, PConstants.P3D);
		frameRate(24);
		smooth();
		
		font = loadFont("CourierNew36.vlw");
		textFont(font, fontSize = 12);
		
		minim = new Minim(this);
		jingle = minim.loadFile("java.mp3", 1024);
		jingle.play();
		//jingle.loop();
		beat = new BeatDetect(jingle.bufferSize(), jingle.sampleRate());
		
		triangles = [];
		triangles_v = [];
		rots = [];
		var pl = initPts = [new Vec3D(0, 3, 0), new Vec3D(3, 0, 0), new Vec3D(0, -3, 0), new Vec3D(-3, 0, 0)];
		var pts = [pl];
		for (i in 0...6) {
			var pln = [];
			var tril = [];
			var trivl = [];
			pl = pts[pts.length-1];
			
			var ptp = pl[pl.length-1];
			for (i in 0...pl.length) {
				var pt = pl[i];
				var tri = Triangle2D.createEquilateralFrom(pt.to2DXY(), ptp.to2DXY());
				var	a = new Vec3D(tri.a.x(), tri.a.y(), pt.z()),
					b = new Vec3D(tri.b.x(), tri.b.y(), ptp.z()),
					c = new Vec3D(tri.c.x(), tri.c.y(), pt.z()+1);
				pln.push(b);
				pln.push(c);
				pln.push(a);
				tril.push(new Triangle3D(a, b, c));
				trivl.push(0.0);
				ptp = pt;
			}
			
			triangles.push(tril);
			triangles_v.push(trivl);
			pts.push(pln);
			rots.push(0);
		}
		
	}
	
	override public function draw():Void {
		background(200, 235, 255);
		
		beat.detect(jingle.mix.toArray());
		
		#if debug
			var ty = fontSize;
			fill(255, 255, 255, 255);
			stroke(255, 255, 255, 255);
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
			
			for (i in 0...fft.specSize()) {
				line(i, height, 0, i, height - fft.getBand(i)*4, 0);
			}
			
			if (mouseX > 0 && mouseX < fft.specSize()) {
				text(mouseX + "(" + fft.indexToFreq(mouseX) + "Hz): " + Math.pow(fft.getBand(mouseX), 0.1) * 10, 0, ty); ty += fontSize;
			}
		#end
		
		
		translate(width * 0.5, height * 0.5, 0);
		
		
		lights();
		pointLight(155, 155, 155, Math.sin(frameCount * 0.05) * 120, Math.cos(frameCount * 0.03) * 120, 120);
		lightSpecular(255, 255, 255); 
		ambient(0, 0, 0);
		emissive(0, 0, 0);
		specular(255, 255, 255);
		shininess(255);
		
		//rotateY(frameCount * 0.05);
		noStroke();
		
		var cl = color;
		
		pushMatrix();
		scale(25, 25, -20);
		fill(cl.red() * 255, cl.green() * 255, cl.blue() * 255, 250);
		beginShape();
		vertex(initPts[0].x(), initPts[0].y(), initPts[0].z());
		vertex(initPts[1].x(), initPts[1].y(), initPts[1].z());
		vertex(initPts[2].x(), initPts[2].y(), initPts[2].z());
		vertex(initPts[3].x(), initPts[3].y(), initPts[3].z());
		endShape(PConstants.CLOSE);
		
		for (i in 0...triangles.length) {
			var tril = triangles[i];
			fill(cl.red() * 255, cl.green() * 255, cl.blue() * 255, i == 0 ? 250 : 235);
			cl = cl.getLightened(0.2);
			
			var beating = beat.isOnset(map(i, 0, triangles.length, 0 , 27).int());
			for (t in 0...tril.length) {
				var tri = tril[t];
				var a = tri.a.copy();
				var b = tri.b.copy();
				var cScale = triangles_v[i][t] = i == 0 ? 
					1 :
					beating && Math.random() < 0.1 ? 0.5 : triangles_v[i][t] * 0.9;
				var c = tri.a.interpolateTo(tri.b, 0.5).interpolateTo(tri.c, cScale);
				drawTri(new Triangle3D(a, b, c));
			}
			if (i != 0) translate(0, 0 , 1.0 + (beating ? jingle.mix.level() : 0));
		}
		popMatrix();
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
}