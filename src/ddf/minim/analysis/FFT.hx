package ddf.minim.analysis;

#if !jvm
typedef Single = Float;
#end

import jvm.NativeArray;

extern class FFT {
	public function new(timeSize:Int, sampleRate:Single):Void;
	public function forward(buffer:NativeArray<Single>):Void;
	public function inverse(buffer:NativeArray<Single>):Void;
	public function scaleBand(i:Int, s:Single):Void;
	public function setBand(i:Int, a:Single):Void;
}
