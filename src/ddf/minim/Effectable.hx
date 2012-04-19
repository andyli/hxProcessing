package ddf.minim;

#if !java private typedef Single = Float; #end

extern interface Effectable  {

	

	/** Adds an effect to the effects chain. */
	public function addEffect(effect:AudioEffect):Void;
	
	/** Removes all effects from the effect chain. */
	public function clearEffects():Void;
	
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
	
	/** Returns true if effect is in the chain. */
	public function hasEffect(effect:AudioEffect):Bool;
	
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
	
	
}