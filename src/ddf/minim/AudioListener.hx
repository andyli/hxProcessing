package ddf.minim;

#if !java private typedef Single = Float; #end

extern interface AudioListener {

	

	/* Called by the Recordable object this is attached to when that object has new samples. */
	@:overload(function(sampL:java.NativeArray<Single>, sampR:java.NativeArray<Single>):Void{})
	/* Called by the Recordable object this is attached to when that object has new samples. */
	public function samples(samp:java.NativeArray<Single>):Void;
	
	
}