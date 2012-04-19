package ddf.minim.spi;

#if !java private typedef Single = Float; #end

extern interface SampleRecorder implements ddf.minim.AudioListener {

	

	/** Begins recording. */
	public function beginRecord():Void;
	
	/** Halts recording. */
	public function endRecord():Void;
	
	/** Returns the full path to the file this is saving to, if it exists. */
	public function filePath():String;
	
	/** Returns the current record state. */
	public function isRecording():Bool;
	
	/** Saves the recorded samples, probably to disk. */
	public function save():AudioRecordingStream;
	
	
}