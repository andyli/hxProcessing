package;

import processing.core.PApplet;
import processing.core.PConstants;
import processing.core.PFont;
import ddf.minim.Minim;
import ddf.minim.AudioPlayer;
import ddf.minim.analysis.FFT;

class Main extends PApplet {
	static var end = 400 * Math.PI;
	
	var font:PFont;
	var minim:Minim;
	var jingle:AudioPlayer;
	var fft:FFT;
	
	override public function setup():Void {
		size(800, 600, PConstants.P3D);
		frameRate(60);
		smooth();
		
		font = createFont("CourierNew", 36, true);
		textFont(font, 24);
		
		minim = new Minim(this);
		jingle = minim.loadFile("java.mp3", 512);
		jingle.loop();
		fft = new FFT(jingle.bufferSize(), jingle.sampleRate());
		
		//trace(Array.ofNative(PFont.list()));
	}
	
	override public function draw():Void {
		background(0, 0, 0);
		stroke(255, 255, 255, 255);
		
		fft.forward(jingle.mix.toArray());
		for (i in 0...fft.specSize()) {
			line(i, height, 0, i, height - fft.getBand(i)*4, 0);
		}
		
		if (mouseX > 0 && mouseX < fft.specSize()) {
			text(mouseX + "(" + fft.indexToFreq(mouseX) + "Hz): " + fft.getBand(mouseX), 0, 24);
		}
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#ECE9D8";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
}