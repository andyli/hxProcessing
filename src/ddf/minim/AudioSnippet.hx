package ddf.minim;

#if !java private typedef Single = Float; #end

extern class AudioSnippet extends ddf.minim.Controller, implements ddf.minim.Playable {

	

	public function new(rec:ddf.minim.spi.AudioRecording):Void;
	
	
	/* Closes the snippet so that any resources it is using can be released. */
	public function close():Void;
	
	/* Sets the position to millis milliseconds from the beginning. */
	public function cue(millis:Int):Void;
	
	/* Returns the meta data for this. */
	public function getMetaData():AudioMetaData;
	
	/* Returns true if this is currently playing and has more than one loop left to play. */
	public function isLooping():Bool;
	
	/* Returns true if this currently playing. */
	public function isPlaying():Bool;
	
	/* Returns the length of the sound in milliseconds. */
	public function length():Int;
	
	/* Sets this to loop num times. */
	@:overload(function(n:Int):Void{})
	/* Sets looping to continuous. */
	public function loop():Void;
	
	/* Returns the number of loops left to do. */
	public function loopCount():Int;
	
	/* Pauses playback. */
	public function pause():Void;
	
	/* Starts playback millis from the beginning. */
	@:overload(function(millis:Int):Void{})
	/* Starts playback from the current position. */
	public function play():Void;
	
	/* Returns the current position of the "playhead" (ie how much of the sound has already been played) */
	public function position():Int;
	
	/* Rewinds to the beginning. */
	public function rewind():Void;
	
	/* Sets the loop points used when looping. */
	public function setLoopPoints(start:Int, stop:Int):Void;
	
	/* Skips millis from the current position. */
	public function skip(millis:Int):Void;
	
	
}