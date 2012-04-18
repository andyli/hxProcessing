package ddf.minim.spi;

#if !jvm private typedef Single = Float; #end

extern interface AudioResource {

	

	/* Closes the resource, releasing any memory. */
	public function close():Void;
	
	/* Returns the Controls available for this AudioResource. */
	//public function getControls():jvm.NativeArray<javax.sound.sampled.Control>;
	
	/* Returns the AudioFormat of this AudioResource. */
	//public function getFormat():javax.sound.sampled.AudioFormat;
	
	/* Opens the resource to be used. */
	public function open():Void;
	
	
}