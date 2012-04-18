package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface AudioListener {

	

	/* Called by the Recordable object this is attached to when that object has new samples. */
	@:overload(function(sampL:jvm.NativeArray<Single>, sampR:jvm.NativeArray<Single>):Void{})
	/* Called by the Recordable object this is attached to when that object has new samples. */
	public function samples(samp:jvm.NativeArray<Single>):Void;
	
	
}