package processing.core;

#if !jvm
private typedef Single = Float;
#end

extern class PImage {
	public var width:Int;
	public var height:Int;
	public var pixels:jvm.NativeArray<Int>;
	
	public function new(width:Int, height:Int, format:Int):Void;
	
}
