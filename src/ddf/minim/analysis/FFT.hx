package ddf.minim.analysis;

#if !jvm
typedef Single = Float;
#end

extern class FFT extends FourierTransform {
	public function new(timeSize:Int, sampleRate:Single):Void;
}
