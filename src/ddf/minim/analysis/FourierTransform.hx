package ddf.minim.analysis;

#if !jvm
typedef Single = Float;
#end

extern class FourierTransform {
	public function avgSize():Int;
	public function calcAvg(lowFreq:Single, hiFreq:Single):Single;
	public function forward(buffer:jvm.NativeArray<Single>):Void;
	public function freqToIndex(freq:Single):Int;
	public function getAverageCenterFrequency(i:Int):Single;
	public function getAvg(i:Int):Single;
	public function getBand(i:Int):Single;
	public function getBandWidth():Single;
	public function getFreq(freq:Single):Single;
	public function indexToFreq(i:Int):Single;
	public function inverse(buffer:jvm.NativeArray<Single>):Void;
	public function linAverages(numAvg:Int):Void;
	public function logAverages(minBandwidth:Int, bandsPerOctave:Int):Void;
	public function noAverages():Void;
	public function scaleBand(i:Int, s:Single):Void;
	public function setBand(i:Int, a:Single):Void;
	public function setFreq(freq:Single, a:Single):Void;
	public function specSize():Int;
	public function timeSize():Int;
	public function window(which:Int):Void;
}