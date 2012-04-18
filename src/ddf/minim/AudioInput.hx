package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern class AudioInput extends ddf.minim.AudioSource, implements ddf.minim.Effectable, implements ddf.minim.Recordable {

	

	/* Constructs an AudioInput that subscribes to stream and can control the DataLine that stream is reading from. */
	public function new(stream:ddf.minim.spi.AudioStream):Void;
	
	
	
}