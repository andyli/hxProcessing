package processing.core;

#if !jvm
private typedef Single = Float;
#end

extern class PImage {
	public var width:Int;
	public var height:Int;
	public var pixels:jvm.NativeArray<Int>;
	
	public function new(width:Int, height:Int, format:Int):Void;
	public function get(x:Int, y:Int, width:Int, height:Int):PImage;
	public function set(x:Int, y:Int, image:PImage):Void;
	public function copy(srcImg:PImage, sx:Int, sy:Int, swidth:Int, sheight:Int, dx:Int, dy:Int, dwidth:Int, dheight:Int):Void;
	public function mask(maskImg:PImage):Void;
	public function blend(srcImg:PImage, x:Int, y:Int, width:Int, height:Int, dx:Int, dy:Int, dwidth:Int, dheight:Int, MODE:Int):Void;
	public function filter(MODE:Int, level:Single):Void;
	public function save(filename:String):Void;
	public function resize(width:Int, hight:Int):Void;
	public function loadPixels():Void;
	public function updatePixels():Void;
}
