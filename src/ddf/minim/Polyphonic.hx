package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface Polyphonic  {

	

	/* Adds an signal to the signals chain. */
	public function addSignal(signal:AudioSignal):Void;
	
	/* Removes all signals from the signal chain. */
	public function clearSignals():Void;
	
	/* Disables signal if it is in the chain. */
	@:overload(function(signal:AudioSignal):Void{})
	/* disables the ith signal in the signal chain. */
	public function disableSignal(i:Int):Void;
	
	/* Enables signal if it is in the chain. */
	@:overload(function(signal:AudioSignal):Void{})
	/* Enables the ith signal in the signal chain. */
	public function enableSignal(i:Int):Void;
	
	/* Returns the ith signal in the signal chain. */
	public function getSignal(i:Int):AudioSignal;
	
	public function hasSignal(signal:AudioSignal):Bool;
	
	/* Returns true if signal is in the chain and is also enabled. */
	public function isEnabled(signal:AudioSignal):Bool;
	
	/* Returns true if at least one signal in the chain is enabled. */
	public function isSounding():Bool;
	
	/* Disables all signals currently attached to this. */
	public function noSound():Void;
	
	/* Removes signal from the signals chain. */
	@:overload(function(signal:AudioSignal):Void{})
	/* Removes and returns the ith signal in the signal chain. */
	public function removeSignal(i:Int):AudioSignal;
	
	/* Returns the number of signals in the chain. */
	public function signalCount():Int;
	
	/* Enables all signals currently attached to this. */
	public function sound():Void;
	
	
}