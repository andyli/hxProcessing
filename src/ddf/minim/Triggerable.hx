package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface Triggerable  {

	

	/* Stops all sound being produced. */
	public function stop():Void;
	
	/* Triggers the sound to play once. */
	public function trigger():Void;
	
	
}