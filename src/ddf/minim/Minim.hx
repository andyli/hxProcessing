package ddf.minim;

#if !java private typedef Single = Float; #end

extern class Minim  {

	/** The .aifc file format. */
	//static public var AIFC:javax.sound.sampled.AudioFileFormat.Type;
	/** The .aiff file format. */
	//static public var AIFF:javax.sound.sampled.AudioFileFormat.Type;
	/** The .au file format. */
	//static public var AU:javax.sound.sampled.AudioFileFormat.Type;
	static public var LOOP_CONTINUOUSLY:Int;
	/** Specifies that you want a MONO AudioInput or AudioOutput */
	static public var MONO:Int;
	/** The .snd file format. */
	//static public var SND:javax.sound.sampled.AudioFileFormat.Type;
	/** Specifies that you want a STEREO AudioInput or AudioOutput */
	static public var STEREO:Int;
	/** The .wav file format. */
	//static public var WAV:javax.sound.sampled.AudioFileFormat.Type;

	/** Creates an instance of Minim that will use the provided implementation for audio. */
	@:overload(function(parent:processing.core.PApplet, msp:MinimServiceProvider):Void{})
	/** Creates an instance of Minim that will use the Javasound implementation. */
	public function new(parent:processing.core.PApplet):Void;
	
	
	/** Creates an AudioRecorder that will use source as its record source and that will save to the file name specified. */
	public function createRecorder(source:Recordable, fileName:String, buffered:Bool):AudioRecorder;
	
	/** Creates an AudioSample using the provided left and right channel samples with an output buffer size of 1024. */
	//@:overload(function(left:java.NativeArray<Single>, right:java.NativeArray<Single>, format:javax.sound.sampled.AudioFormat):AudioSample{})
	/** Creates an AudioSample using the provided samples and AudioFormat, with the desired output buffer size. */
	//@:overload(function(samples:java.NativeArray<Single>, format:javax.sound.sampled.AudioFormat, bufferSize:Int):AudioSample{})
	/** Creates an AudioSample using the provided left and right channel samples. */
	//@:overload(function(left:java.NativeArray<Single>, right:java.NativeArray<Single>, format:javax.sound.sampled.AudioFormat, bufferSize:Int):AudioSample{})
	/** Creates an AudioSample using the provided samples and AudioFormat, with an output buffer size of 1024 samples. */
	//public function createSample(samples:java.NativeArray<Single>, format:javax.sound.sampled.AudioFormat):AudioSample;
	
	/** Displays a debug message, but only if debugOn() has been called. */
	static public function debug(s:String):Void;
	
	/** Turns off debug messages. */
	public function debugOff():Void;
	
	/** Turns on debug messages. */
	public function debugOn():Void;
	
	/** Used internally to report error messages. */
	static public function error(s:String):Void;
	
	/** Gets an AudioInput, to which you can attach AudioEffects. */
	@:overload(function(type:Int):AudioInput{})
	/** Gets an AudioInput, to which you can attach AudioEffects. */
	@:overload(function(type:Int, bufferSize:Int):AudioInput{})
	/** Gets an AudioInput, to which you can attach AudioEffects. */
	@:overload(function(type:Int, bufferSize:Int, sampleRate:Single):AudioInput{})
	/** Gets an AudioInput, to which you can attach AudioEffects. */
	@:overload(function(type:Int, bufferSize:Int, sampleRate:Single, bitDepth:Int):AudioInput{})
	/** Gets an AudioInput, to which you can attach AudioEffects. */
	public function getLineIn():AudioInput;
	
	/** Gets an AudioOutput, to which you can attach AudioSignals and AudioEffects. */
	@:overload(function(type:Int):AudioOutput{})
	/** Gets an AudioOutput, to which you can attach AudioSignals and AudioEffects. */
	@:overload(function(type:Int, bufferSize:Int):AudioOutput{})
	/** Gets an AudioOutput, to which you can attach AudioSignals and AudioEffects. */
	@:overload(function(type:Int, bufferSize:Int, sampleRate:Single):AudioOutput{})
	/** Gets an AudioOutput, to which you can attach AudioSignals and AudioEffects. */
	@:overload(function(type:Int, bufferSize:Int, sampleRate:Single, bitDepth:Int):AudioOutput{})
	/** Gets an AudioOutput, to which you can attach AudioSignals and AudioEffects. */
	public function getLineOut():AudioOutput;
	
	/** Loads the requested file into an AudioPlayer with the request buffer size. */
	@:overload(function(filename:String, bufferSize:Int):AudioPlayer{})
	/** Loads the requested file into an AudioPlayer with a buffer size of 1024 samples. */
	public function loadFile(filename:String):AudioPlayer;
	
	/** Loads the requested file into an AudioSample. */
	@:overload(function(filename:String, bufferSize:Int):AudioSample{})
	/** Loads the requested file into an AudioSample. */
	public function loadSample(filename:String):AudioSample;
	
	/** Loads the requested file into an AudioSnippet */
	public function loadSnippet(filename:String):AudioSnippet;
	
	/** Sets the Javasound Mixer that will be used for obtaining input sources such as AudioInputs. */
	//public function setInputMixer(mixer:javax.sound.sampled.Mixer):Void;
	
	/** Sets the Javasound Mixer that will be used for obtain output destinations such as those required by AudioOuput, AudioPlayer, AudioSample, and so forth. */
	//public function setOutputMixer(mixer:javax.sound.sampled.Mixer):Void;
	
	/** Stops Minim. */
	public function stop():Void;
	
	
}