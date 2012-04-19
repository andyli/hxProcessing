package ddf.minim.spi;

#if !java private typedef Single = Float; #end

extern interface AudioRecording implements ddf.minim.spi.AudioResource {

	

	/* How many loops are left to go. */
	public function getLoopCount():Int;
	
	/* Returns meta data about the recording, such as duration, name, ID3 tags perhaps. */
	public function getMetaData():AudioMetaData;
	
	/* Returns the length of the source in milliseconds. */
	public function getMillisecondLength():Int;
	
	/* Gets the current millisecond position of the source. */
	public function getMillisecondPosition():Int;
	
	public function isPlaying():Bool;
	
	/* Starts looping playback from the current position. */
	public function loop(count:Int):Void;
	
	/* Stops playback of the source. */
	public function pause():Void;
	
	/* Starts playback of the source. */
	public function play():Void;
	
	/* Sets the loops points in the source, in milliseconds */
	public function setLoopPoints(start:Int, stop:Int):Void;
	
	/* Sets the current millisecond position of the source. */
	public function setMillisecondPosition(pos:Int):Void;
	
	
}