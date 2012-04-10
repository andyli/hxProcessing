package ddf.minim;

#if !jvm
typedef Single = Float;
#end

extern class AudioSource {
	public function bufferSize():Int;
	public function sampleRate():Single;
	
	public var mix:AudioBuffer;
}