package ddf.minim.analysis;

#if !java private typedef Single = Float; #end

extern class DFT extends ddf.minim.analysis.FourierTransform {

	

	/** Constructs a DFT that expects audio buffers of length timeSize that have been recorded with a sample rate of sampleRate. */
	public function new(timeSize:Int, sampleRate:Single):Void;
	
	
	/** Performs a forward transform on buffer. */
	override public function forward(samples:java.NativeArray<Single>):Void;
	
	/** Performs an inverse transform of the frequency spectrum and places the result in buffer. */
	override public function inverse(buffer:java.NativeArray<Single>):Void;
	
	/** Not currently implemented. */
	override public function scaleBand(i:Int, s:Single):Void;
	
	/** Not currently implemented. */
	override public function setBand(i:Int, a:Single):Void;
	
	
}