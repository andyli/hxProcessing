package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern interface AudioBuffer  {

	

	/* Gets the ith sample in the buffer. */
	public function get(i:Int):Single;
	
	/* Gets the current level of the buffer. */
	public function level():Single;
	
	/* Returns the length of the buffer. */
	public function size():Int;
	
	/* Returns the samples in the buffer in a new float array. */
	public function toArray():jvm.NativeArray<Single>;
	
	
}