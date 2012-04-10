package ddf.minim;

import processing.core.PApplet;

extern class Minim {
	public function new(parent:PApplet);
	
	public function loadFile(filename:String, bufferSize:Int):AudioPlayer;
	public function stop():Void;
	public function debugOn():Void;
	public function debugOff():Void;
}