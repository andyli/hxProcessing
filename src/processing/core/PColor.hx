package processing.core;

#if !jvm
private typedef Single = Float;
#end

@:native("java.awt.Color")
extern class PColor {
	@:overload(function(cspace:ColorSpace, components:jvm.NativeArray<Single>, alpha:Single):Void{})
	@:overload(function(r:Single, g:Single, b:Single):Void{})
	@:overload(function(r:Single, g:Single, b:Single, a:Single):Void{})
	@:overload(function(rgb:Int):Void{})
	@:overload(function(rgba:Int, hasalpha:Bool):Void{})
	@:overload(function(r:Int, g:Int, b:Int):Void{})
	public function new(r:Int, g:Int, b:Int, a:Int):Void;
	
	public function brighter():PColor;
	public function darker():PColor;
	static public function decode(nm:String):PColor;
	public function equals(obj:Dynamic):Bool;
	public function getAlpha():Int;
	public function getBlue():Int;
	@:overload(function getColor(nm:String):PColor{})
	@:overload(function getColor(nm:String, v:PColor):PColor{})
	static public function getColor(nm:String, v:Int):PColor;
	public function getColorComponents(compArray:jvm.NativeArray<Single>):jvm.NativeArray<Single>;
	public function getComponents(compArray:jvm.NativeArray<Single>):jvm.NativeArray<Single>;
	public function getGreen():Int;
	static public function getHSBColor(h:Single, s:Single, b:Single):PColor;
	public function getRed():Int;
	public function getRGB():Int;
	public function getRGBColorComponents(compArray:jvm.NativeArray<Single>):jvm.NativeArray<Single>;
	public function getRGBComponents(compArray:jvm.NativeArray<Single>):jvm.NativeArray<Single>;
	public function getTransparency():Int;
	public function hashCode():Int;
	static public function HSBtoRGB(hue:Single, saturation:Single, brightness:Single):Int;
	static public function RGBtoHSB(r:Int, g:Int, b:Int, hsbvals:jvm.NativeArray<Single>):jvm.NativeArray<Single>;
	public function toString():String;
}
