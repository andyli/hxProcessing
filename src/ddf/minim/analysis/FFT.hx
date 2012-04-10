package ddf.minim.analysis;

#if !jvm
private typedef Single = Float;
#end

extern class FFT extends FourierTransform {
	public function new(timeSize:Int, sampleRate:Single):Void;
}
