package ddf.minim;

#if !java private typedef Single = Float; #end

extern interface AudioEffect  {

	

	/* Processes sigLeft and sigRight in some way. */
	@:overload(function(sigLeft:java.NativeArray<Single>, sigRight:java.NativeArray<Single>):Void{})
	/* Processes signal in some way. */
	public function process(signal:java.NativeArray<Single>):Void;
	
	
}