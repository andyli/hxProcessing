package ddf.minim;

import processing.core.PApplet;

extern class AudioPlayer {
	public function cue(millis:Int):Void;
	public function isLooping():Bool;
	public function isPlaying():Bool;
	public function length():Int;
	public function loop():Void;
	public function loopCount():Int;
	public function pause():Void;
	public function play():Void;
	public function position():Int;
	public function rewind():Void;
	public function setLoopPoints(start:Int, stop:Int):Void;
	public function skip(millis:Int):Void;
}