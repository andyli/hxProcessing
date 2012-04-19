package ddf.minim;

#if !java private typedef Single = Float; #end

extern class AudioRecorder  {

	

	/* Constructs an AudioRecorder that will use recorder to record recordSource. */
	public function new(recordSource:Recordable, recorder:ddf.minim.spi.SampleRecorder):Void;
	
	
	/* Begins recording audio from the current record source. */
	public function beginRecord():Void;
	
	/* Halts the recording of audio from the current record source. */
	public function endRecord():Void;
	
	/* Returns the current record state. */
	public function isRecording():Bool;
	
	/* Requests the current SampleRecorder to save. */
	public function save():AudioPlayer;
	
	/* Sets the record source for this recorder. */
	public function setRecordSource(recordSource:Recordable):Void;
	
	/* Sets the SampleRecorder for this recorder. */
	public function setSampleRecorder(recorder:ddf.minim.spi.SampleRecorder):Void;
	
	
}