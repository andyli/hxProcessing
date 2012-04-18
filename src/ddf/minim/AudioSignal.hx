package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface AudioSignal  {

	

	/* Fills left and right with values in the range of [-1, 1]. */
	@:overload(function(left:jvm.NativeArray<Single>, right:jvm.NativeArray<Single>):Void{})
	/* Fills signal with values in the range of [-1, 1]. */
	public function generate(signal:jvm.NativeArray<Single>):Void;
	
	
}