package ddf.minim;

#if !java private typedef Single = Float; #end

extern interface AudioSignal  {

	

	/* Fills left and right with values in the range of [-1, 1]. */
	@:overload(function(left:java.NativeArray<Single>, right:java.NativeArray<Single>):Void{})
	/* Fills signal with values in the range of [-1, 1]. */
	public function generate(signal:java.NativeArray<Single>):Void;
	
	
}