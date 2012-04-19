package ddf.minim;

#if !java private typedef Single = Float; #end

extern class EffectsChain implements ddf.minim.AudioEffect {

	

	/* Constructs an empty EffectsChain. */
	public function new():Void;
	
	
	/* Adds e to the end of the chain. */
	public function add(e:AudioEffect):Void;
	
	/* Removes all effects from the effect chain. */
	public function clear():Void;
	
	/* Returns true if e is in this chain */
	public function contains(e:AudioEffect):Bool;
	
	/* Disables e if it is in the chain. */
	@:overload(function(e:AudioEffect):Void{})
	/* Disables the ith effect in the chain. */
	public function disable(i:Int):Void;
	
	/* Disables all effects in the chain. */
	public function disableAll():Void;
	
	/* Enables e if it is in the chain. */
	@:overload(function(e:AudioEffect):Void{})
	/* Enables the ith effect in the chain. */
	public function enable(i:Int):Void;
	
	/* Enables all effects in the chain. */
	public function enableAll():Void;
	
	/* Gets the ith effect in the chain. */
	public function get(i:Int):AudioEffect;
	
	/* Returns true if at least one effect in the chain is enabled. */
	public function hasEnabled():Bool;
	
	/* Returns true if e is in the chain and is enabled. */
	public function isEnabled(e:AudioEffect):Bool;
	
	/* Sends sampL and sampR to each effect in the chain, in order. */
	@:overload(function(sampL:java.NativeArray<Single>, sampR:java.NativeArray<Single>):Void{})
	/* Sends samp to each effect in the chain, in order. */
	public function process(samp:java.NativeArray<Single>):Void;
	
	/* Removes e from the chain. */
	@:overload(function(e:AudioEffect):Void{})
	/* Removes and returns the ith effect from the chain. */
	public function remove(i:Int):AudioEffect;
	
	/* Returns the number of effects in the chain. */
	public function size():Int;
	
	
}