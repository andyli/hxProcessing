package ddf.minim.spi;

#if !java private typedef Single = Float; #end

extern interface AudioSynthesizer implements ddf.minim.spi.AudioResource, implements ddf.minim.spi.AudioStream {

	

	/** Sets the AudioEffect to apply to the signal. */
	public function setAudioEffect(effect:AudioEffect):Void;
	
	/** Sets the AudioSignal used by this sythesizer. */
	public function setAudioSignal(signal:AudioSignal):Void;
	
	
}