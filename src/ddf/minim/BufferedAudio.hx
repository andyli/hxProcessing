package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern class BufferedAudio  {

	static public var LEFT:Int;
	static public var RIGHT:Int;

	/* Gets the samples for the requested channel number as a float array. */
	public function getChannel(channelNumber:Int):jvm.NativeArray<Single>;
	
	/* Gets the length in milliseconds of the buffered audio. */
	public function length():Int;
	
	
}