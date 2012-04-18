package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern class SignalChain implements ddf.minim.AudioSignal {

	

	/* Constructs an empty SignalChain. */
	public function new():Void;
	
	
	/* Adds signal to the end of the chain. */
	public function add(signal:AudioSignal):Void;
	
	/* Removes all signals from the effect chain. */
	public function clear():Void;
	
	/* Returns true if s is in the chain. */
	public function contains(s:AudioSignal):Bool;
	
	/* Disables signal if it is in the chain. */
	@:overload(function(signal:AudioSignal):Void{})
	/* Disables the ith effect in the chain. */
	public function disable(i:Int):Void;
	
	/* Disables all signals in the chain. */
	public function disableAll():Void;
	
	/* Enables signal if it is in the chain. */
	@:overload(function(signal:AudioSignal):Void{})
	/* Enables the ith effect in the chain. */
	public function enable(i:Int):Void;
	
	/* Enables all signals in the chain. */
	public function enableAll():Void;
	
	/* Asks all the enabled signals in the chain to generate a left and right buffer of samples, adds the signals together and puts the result in left and right. */
	@:overload(function(left:jvm.NativeArray<Single>, right:jvm.NativeArray<Single>):Void{})
	/* Asks all the enabled signals in the chain to generate a new buffer of samples, adds the buffers together and puts the result in signal. */
	public function generate(signal:jvm.NativeArray<Single>):Void;
	
	/* Gets the ith signal in the chain. */
	public function get(i:Int):AudioSignal;
	
	/* Returns true if at least one effect in the chain is enabled. */
	public function hasEnabled():Bool;
	
	/* Returns true if e is in the chain and is enabled. */
	public function isEnabled(signal:AudioSignal):Bool;
	
	/* Removes signal from the chain. */
	@:overload(function(signal:AudioSignal):Void{})
	/* Removes and returns the ith signal from the chain. */
	public function remove(i:Int):AudioSignal;
	
	/* Returns the number of signals in the chain. */
	public function size():Int;
	
	
}