package ddf.minim.analysis;

#if !jvm private typedef Single = Float; #end

extern class FFT extends ddf.minim.analysis.FourierTransform {

	

	/* Constructs an FFT that will accept sample buffers that are timeSize long and have been recorded with a sample rate of sampleRate. */
	public function new(timeSize:Int, sampleRate:Single):Void;
	
	
	/* Performs a forward transform on the passed buffers. */
	@:overload(function(buffReal:jvm.NativeArray<Single>, buffImag:jvm.NativeArray<Single>):Void{})
	/* Performs a forward transform on buffer. */
	override public function forward(buffer:jvm.NativeArray<Single>):Void;
	
	/* Performs an inverse transform of the frequency spectrum and places the result in buffer. */
	override public function inverse(buffer:jvm.NativeArray<Single>):Void;
	
	/* Scales the amplitude of the ith frequency band by s. */
	override public function scaleBand(i:Int, s:Single):Void;
	
	/* Sets the amplitude of the ith frequency band to a. */
	override public function setBand(i:Int, a:Single):Void;
	
	
}