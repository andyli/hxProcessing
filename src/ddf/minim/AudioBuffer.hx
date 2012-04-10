package ddf.minim;

#if !jvm
typedef Single = Float;
#end

extern interface AudioBuffer {
	public function get(i:Int):Single;
	public function level():Single;
	public function size():Int;
	public function toArray():jvm.NativeArray<Single>;
}