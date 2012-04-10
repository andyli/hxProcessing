package processing.core;

#if !jvm
typedef Single = Float;
#end

extern class PApplet {
	/* 
	 * Structure
	 */
	
	public function size(width:Int, height:Int):Void;
	
	/* 
	 * Environment
	 */
	
	public var frameCount:Int;
	public function frameRate(fps:Single):Void;
	//public var frameRate:Float;
	public var height:Int;
	public var width:Int;
	
	
	/*
	 * Shape
	 */
	
	public function arc(x:Single, y:Single, width:Single, height:Single, start:Single, stop:Single):Void;
	public function ellipse(x:Single, y:Single, width:Single, height:Single):Void;
	//@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single):Void{})
	public function line(x1:Single, y1:Single, x2:Single, y2:Single):Void;
	//@:overload(function(x:Single, y:Single, z:Single):Void {})
	public function point(x:Single, y:Single):Void;
	public function quad(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	public function rect(x:Single, y:Single, width:Single, height:Single):Void;
	public function triangle(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single):Void;
	
	public function noSmooth():Void;
	public function smooth():Void;
	
	
	/*
	 * Math
	 */
	public function abs(value:Single):Single;
	public function ceil(value:Single):Int;
	public function constrain(value:Single, min:Single, max:Single):Single;
	//@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single):Single{})
	public function dist(x1:Single, y1:Single, x2:Single, y2:Single):Single;
	public function exp(value:Single):Single;
	public function floor(value:Single):Int;
	public function lerp(value1:Single, value2:Single, amt:Single):Single;
	public function log(value:Single):Single;
	//@:overload(function(a:Single, b:Single, c:Single):Single {})
	public function mag(a:Single, b:Single):Single;
	public function map(value:Single, low1:Single, high1:Single, low2:Single, high2:Single):Single;
	public function norm(value:Single, low:Single, high:Single):Single;
	public function round(value:Single):Int;
	public function sq(value:Single):Single;
	public function sqrt(value:Single):Single;
	
	static public function main(args:jvm.NativeArray<String>):Void;
}