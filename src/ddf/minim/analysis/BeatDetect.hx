package ddf.minim.analysis;

#if !java private typedef Single = Float; #end

extern class BeatDetect  {

	/* Constant used to request frequency energy tracking mode. */
	static public var FREQ_ENERGY:Int;
	/* Constant used to request sound energy tracking mode. */
	static public var SOUND_ENERGY:Int;

	/* Create a BeatDetect object that is in FREQ_ENERGY mode and expects a sample buffer with the requested attributes. */
	@:overload(function(timeSize:Int, sampleRate:Single):Void{})
	/* Create a BeatDetect object that is in SOUND_ENERGY mode. */
	public function new():Void;
	
	
	/* Analyze the samples in ab. */
	@:overload(function(ab:AudioBuffer):Void{})
	/* Analyze the samples in buffer. */
	public function detect(buffer:java.NativeArray<Single>):Void;
	
	/* Set the object to use the requested algorithm. */
	public function detectMode(algo:Int):Void;
	
	/* Draws some debugging visuals in the passed PApplet. */
	public function drawGraph(p:processing.core.PApplet):Void;
	
	/* In frequency energy mode this returns true if a beat corresponding to the frequency range of a hi hat has been detected. */
	public function isHat():Bool;
	
	/* In frequency energy mode this returns true if a beat corresponding to the frequency range of a kick drum has been detected. */
	public function isKick():Bool;
	
	/* In frequency energy mode this returns true when a beat has been detect in the ith frequency band. */
	@:overload(function(i:Int):Bool{})
	/* In sound energy mode this returns true when a beat has been detected. */
	public function isOnset():Bool;
	
	/* In frequency energy mode this returns true if at least threshold bands of the bands included in the range [low, high] have registered a beat. */
	public function isRange(low:Int, high:Int, threshold:Int):Bool;
	
	/* In frequency energy mode this returns true if a beat corresponding to the frequency range of a snare drum has been detected. */
	public function isSnare():Bool;
	
	/* Sets the sensitivity of the algorithm. */
	public function setSensitivity(s:Int):Void;
	
	
}