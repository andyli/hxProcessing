package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface Recordable  {

	

	/* Adds a listener who will be notified each time this receives or creates a new buffer of samples. */
	public function addListener(listener:AudioListener):Void;
	
	/* Returns the buffer size being used by this. */
	public function bufferSize():Int;
	
	/* Returns the format of this recordable audio. */
	//public function getFormat():javax.sound.sampled.AudioFormat;
	
	/* Removes the listener from the list of listeners. */
	public function removeListener(listener:AudioListener):Void;
	
	/* Returns the sample rate of this recordable audio. */
	public function sampleRate():Single;
	
	/* Returns either Minim.MONO or Minim.STEREO */
	public function type():Int;
	
	
}