package ddf.minim;

#if !java private typedef Single = Float; #end

extern class SignalSplitter implements ddf.minim.AudioListener, implements ddf.minim.Recordable {

	

	/** Construct a SignalSplitter that will receive audio in the given format and in buffers the size of bufferSize. */
	public function new(format:javax.sound.sampled.AudioFormat, bufferSize:Int):Void;
	
	
	/** Adds a listener who will be notified each time this receives or creates a new buffer of samples. */
	public function addListener(listener:AudioListener):Void;
	
	/** Returns the buffer size being used by this. */
	public function bufferSize():Int;
	
	/** Returns the format of this recordable audio. */
	public function getFormat():javax.sound.sampled.AudioFormat;
	
	/** Removes the listener from the list of listeners. */
	public function removeListener(listener:AudioListener):Void;
	
	/** Returns the sample rate of this recordable audio. */
	public function sampleRate():Single;
	
	/** Called by the Recordable object this is attached to when that object has new samples. */
	@:overload(function(sampL:java.NativeArray<Single>, sampR:java.NativeArray<Single>):Void{})
	/** Called by the Recordable object this is attached to when that object has new samples. */
	public function samples(samp:java.NativeArray<Single>):Void;
	
	/** Returns either Minim.MONO or Minim.STEREO */
	public function type():Int;
	
	
}