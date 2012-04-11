package ddf.minim.analysis;

#if !jvm
private typedef Single = Float;
#end

extern class BeatDetect {
	static public var FREQ_ENERGY:Int;
	static public var SOUND_ENERGY:Int;

	public function new(timeSize:Int, sampleRate:Single):Void;
	
	public function detect(buffer:jvm.NativeArray<Float>):Void;
	public function detectMode(algo:Int):Void;
	public function drawGraph(p:processing.core.PApplet):Void;
	public function isHat():Bool;
	public function isKick():Bool;
	public function isOnset(i:Int):Bool;
	public function isRange(low:Int, high:Int, threshold:Int):Bool;
	public function isSnare():Bool;
	public function setSensitivity(s:Int):Void;
}
