package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern class AudioSample extends ddf.minim.AudioSource, implements ddf.minim.BufferedAudio, implements ddf.minim.Effectable, implements ddf.minim.Recordable, implements ddf.minim.Triggerable {

	

	/* Constructs an AudioSample object that gets its audio from stream. */
	public function new(stream:ddf.minim.spi.AudioStream):Void;
	
	
	public function getMetaData():AudioMetaData;
	

	/* Stops all sound being produced. */
	public function stop():Void;
	
	/* Triggers the sound to play once. */
	public function trigger():Void;

	/* Gets the samples for the requested channel number as a float array. */
	public function getChannel(channelNumber:Int):jvm.NativeArray<Single>;
	
	/* Gets the length in milliseconds of the buffered audio. */
	public function length():Int;
	
}