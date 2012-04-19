package ddf.minim.analysis;

#if !java private typedef Single = Float; #end

extern class FourierTransform  {

	/** A constant indicating a Hamming window should be used on sample buffers. */
	static public var HAMMING:Int;
	/** A constant indicating no window should be used on sample buffers. */
	static public var NONE:Int;
	
	/** Returns the number of averages currently being calculated. */
	public function avgSize():Int;
	
	/** Calculate the average amplitude of the frequency band bounded by lowFreq and hiFreq, inclusive. */
	public function calcAvg(lowFreq:Single, hiFreq:Single):Single;
	
	/** Performs a forward transform on buffer. */
	@:overload(function(buffer:AudioBuffer):Void{})
	/** Performs a forward transform on values in buffer. */
	@:overload(function(buffer:java.NativeArray<Single>, startAt:Int):Void{})
	/** Performs a forward transform on buffer. */
	@:overload(function(buffer:AudioBuffer, startAt:Int):Void{})
	/** Performs a forward transform on buffer. */
	public function forward(buffer:java.NativeArray<Single>):Void;
	
	/** Returns the index of the frequency band that contains the requested frequency. */
	public function freqToIndex(freq:Single):Int;
	
	/** Returns the center frequency of the ith average band. */
	public function getAverageCenterFrequency(i:Int):Single;
	
	/** Gets the value of the ith average. */
	public function getAvg(i:Int):Single;
	
	/** Returns the amplitude of the requested frequency band. */
	public function getBand(i:Int):Single;
	
	/** Returns the width of each frequency band in the spectrum (in Hz). */
	public function getBandWidth():Single;
	
	/** Gets the amplitude of the requested frequency in the spectrum. */
	public function getFreq(freq:Single):Single;
	
	/** Returns the middle frequency of the ith band. */
	public function indexToFreq(i:Int):Single;
	
	/** Performs an inverse transform of the frequency spectrum and places the result in buffer. */
	@:overload(function(buffer:AudioBuffer):Void{})
	/** Performs an inverse transform of the frequency spectrum represented by freqReal and freqImag and places the result in buffer. */
	@:overload(function(freqReal:java.NativeArray<Single>, freqImag:java.NativeArray<Single>, buffer:java.NativeArray<Single>):Void{})
	/** Performs an inverse transform of the frequency spectrum and places the result in buffer. */
	public function inverse(buffer:java.NativeArray<Single>):Void;
	
	/** Sets the number of averages used when computing the spectrum and spaces the averages in a linear manner. */
	public function linAverages(numAvg:Int):Void;
	
	/** Sets the number of averages used when computing the spectrum based on the minimum bandwidth for an octave and the number of bands per octave. */
	public function logAverages(minBandwidth:Int, bandsPerOctave:Int):Void;
	
	/** Sets the object to not compute averages. */
	public function noAverages():Void;
	
	/** Scales the amplitude of the ith frequency band by s. */
	public function scaleBand(i:Int, s:Single):Void;
	
	/** Scales the amplitude of the requested frequency by a. */
	public function scaleFreq(freq:Single, s:Single):Void;
	
	/** Sets the amplitude of the ith frequency band to a. */
	public function setBand(i:Int, a:Single):Void;
	
	/** Sets the amplitude of the requested frequency in the spectrum to a. */
	public function setFreq(freq:Single, a:Single):Void;
	
	/** Returns the size of the spectrum created by this transform. */
	public function specSize():Int;
	
	/** Returns the length of the time domain signal expected by this transform. */
	public function timeSize():Int;
	
	/** Sets the window to use on the samples before taking the forward transform. */
	public function window(which:Int):Void;
	
	
}