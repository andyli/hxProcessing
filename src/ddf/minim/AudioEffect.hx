package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface AudioEffect  {

	

	/* Processes sigLeft and sigRight in some way. */
	@:overload(function(sigLeft:jvm.NativeArray<Single>, sigRight:jvm.NativeArray<Single>):Void{})
	/* Processes signal in some way. */
	public function process(signal:jvm.NativeArray<Single>):Void;
	
	
}