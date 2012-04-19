package ddf.minim.spi;

#if !java private typedef Single = Float; #end

extern interface AudioStream implements ddf.minim.spi.AudioResource {

	

	/** The size of the buffer that will be sent to listeners and effects. */
	public function bufferSize():Int;
	
	/** Set the AudioEffect to apply to this stream. */
	public function setAudioEffect(effect:AudioEffect):Void;
	
	/** Set the AudioListener to receive samples from this source. */
	public function setAudioListener(listener:AudioListener):Void;
	
	
}