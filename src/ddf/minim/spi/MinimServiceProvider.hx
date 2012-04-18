package ddf.minim.spi;

#if !jvm private typedef Single = Float; #end

extern interface MinimServiceProvider  {

	

	/* Tells the implementation it should not produce debug output. */
	public function debugOff():Void;
	
	/* Tells the implementation it should produce debug output, if that's something it does. */
	public function debugOn():Void;
	
	/* Should return an AudioRecording that can play the file requested. */
	public function getAudioRecording(filename:String):AudioRecording;
	
	/* Should return an AudioRecordingStream that will stream the file requested. */
	public function getAudioRecordingStream(filename:String, bufferSize:Int):AudioRecordingStream;
	
	/* Should return an AudioSample that will store the provided samples. */
	@:overload(function(samples:jvm.NativeArray<Single>, format:javax.sound.sampled.AudioFormat, bufferSize:Int):AudioSample{})
	/* Should return an AudioSample that will store the provided samples. */
	@:overload(function(left:jvm.NativeArray<Single>, right:jvm.NativeArray<Single>, format:javax.sound.sampled.AudioFormat, bufferSize:Int):AudioSample{})
	/* Should return an AudioSample that will load the requested file into memory. */
	public function getAudioSample(filename:String, bufferSize:Int):AudioSample;
	
	/* Should return an AudioStream with the requested parameters. */
	public function getAudioStream(type:Int, bufferSize:Int, sampleRate:Single, bitDepth:Int):AudioStream;
	
	/* Should return an AudioSynthesizer that can generate audio that will be heard through the computer's speakers. */
	public function getAudioSynthesizer(type:Int, bufferSize:Int, sampleRate:Single, bitDepth:Int):AudioSynthesizer;
	
	/* Should return a SampleRecorder that can record the source in a buffered (in-memory) or non-buffered (streamed) manner, to the file specified by saveTo */
	public function getSampleRecorder(source:Recordable, saveTo:String, buffered:Bool):SampleRecorder;
	
	/* Called inside the Minim constructor. */
	public function start():Void;
	
	/* Called when stop() is called by the Minim object that owns this. */
	public function stop():Void;
	
	
}