package ddf.minim.spi;

#if !java private typedef Single = Float; #end

extern interface AudioResource {

	

	/* Closes the resource, releasing any memory. */
	public function close():Void;
	
	/* Returns the Controls available for this AudioResource. */
	//public function getControls():java.NativeArray<javax.sound.sampled.Control>;
	
	/* Returns the AudioFormat of this AudioResource. */
	//public function getFormat():javax.sound.sampled.AudioFormat;
	
	/* Opens the resource to be used. */
	public function open():Void;
	
	
}