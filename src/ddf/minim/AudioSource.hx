package ddf.minim;

#if !java private typedef Single = Float; #end

extern class AudioSource extends ddf.minim.Controller, implements ddf.minim.Effectable, implements ddf.minim.Recordable {

	/** The buffer containing the left channel samples. */
	public var left:AudioBuffer;
	/** The buffer containing the mix of the left and right channels. */
	public var mix:AudioBuffer;
	/** The buffer containing the right channel samples. */
	public var right:AudioBuffer;

	/** Constructs an AudioSource that will subscribe to the samples in stream. */
	public function new(istream:ddf.minim.spi.AudioStream):Void;
	
	
	/** Adds an effect to the effects chain. */
	public function addEffect(effect:AudioEffect):Void;
	
	/** Adds a listener who will be notified each time this receives or creates a new buffer of samples. */
	public function addListener(listener:AudioListener):Void;
	
	/** Returns the buffer size being used by this. */
	public function bufferSize():Int;
	
	/** Removes all effects from the effect chain. */
	public function clearEffects():Void;
	
	/** Closes the AudioStream this was constructed with. */
	public function close():Void;
	
	/** Disables effect if it is in the chain. */
	@:overload(function(effect:AudioEffect):Void{})
	/** disables the ith effect in the effect chain. */
	public function disableEffect(i:Int):Void;
	
	/** Returns the number of effects in the chain. */
	public function effectCount():Int;
	
	/** Enables all effects currently attached to this. */
	public function effects():Void;
	
	/** Enables effect if it is in the chain. */
	@:overload(function(effect:AudioEffect):Void{})
	/** Enables the ith effect in the effect chain. */
	public function enableEffect(i:Int):Void;
	
	/** Returns the ith effect in the effect chain. */
	public function getEffect(i:Int):AudioEffect;
	
	/** Returns the format of this recordable audio. */
	//public function getFormat():javax.sound.sampled.AudioFormat;
	
	/** Returns true if effect is in the chain. */
	public function hasEffect(e:AudioEffect):Bool;
	
	/** Returns true if at least one effect in the chain is enabled. */
	public function isEffected():Bool;
	
	/** Returns true if effect is in the chain and is also enabled. */
	public function isEnabled(effect:AudioEffect):Bool;
	
	/** Disables all effects currently attached to this. */
	public function noEffects():Void;
	
	/** Removes effect from the effects chain. */
	@:overload(function(effect:AudioEffect):Void{})
	/** Removes and returns the ith effect in the effect chain. */
	public function removeEffect(i:Int):AudioEffect;
	
	/** Removes the listener from the list of listeners. */
	public function removeListener(listener:AudioListener):Void;
	
	/** Returns the sample rate of this recordable audio. */
	public function sampleRate():Single;
	
	/** Returns either Minim.MONO or Minim.STEREO */
	public function type():Int;
	
	
}