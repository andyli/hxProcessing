package processing.core;

#if !jvm
private typedef Single = Float;
#end

extern class PApplet {
	/* 
	 * Structure
	 */
	public function draw():Void;
	public function exit():Void;
	public function loop():Void;
	public function noLoop():Void;
	public function popStyle():Void;
	public function pushStyle():Void;
	public function redraw():Void;
	public function setup():Void;
	public function size(width:Int, height:Int, mode:String):Void;
	
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
	//@:overload(function(x1:Single, y1:Single, x2:Single, y2:Single):Void{})
	public function line(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single):Void;
	//@:overload(function(x:Single, y:Single):Void {})
	public function point(x:Single, y:Single, z:Single):Void;
	public function quad(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	public function rect(x:Single, y:Single, width:Single, height:Single):Void;
	public function triangle(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single):Void;
	
	public function noSmooth():Void;
	public function smooth():Void;
	
	public function loadShape(filename:String):Null<PShape>;
	public function shape(sh:PShape, x:Single, y:Single, width:Single, height:Single):Void;
	
	/* 
	 * Input
	 */
	public function mouseClicked():Void;
	public function mouseDragged():Void;
	public function mouseMoved():Void;
	public function mousePressed():Void;
	public function mouseReleased():Void;
	public var mouseX:Int;
	public var mouseY:Int;
	public var pmouseX:Int;
	public var pmouseY:Int;
	
	public var keyCode:Int;
	public function keyPressed():Void;
	public function keyReleased():Void;
	
	/*
	 * Transform
	 */
	public function applyMatrix(n00:Single, n01:Single, n02:Single, n03:Single, n04:Single, n05:Single, n06:Single, n07:Single, n08:Single, n09:Single, n10:Single, n11:Single, n12:Single, n13:Single, n14:Single, n15:Single):Void;
	public function popMatrix():Void;
	public function printMatrix():Void;
	public function pushMatrix():Void;
	public function resetMatrix():Void;
	public function rotate(angle:Single):Void;
	public function rotateX(angle:Single):Void;
	public function rotateY(angle:Single):Void;
	public function rotateZ(angle:Single):Void;
	public function scale(x:Single, y:Single, z:Single):Void;
	public function shearX(angle:Single):Void;
	public function shearY(angle:Single):Void;
	public function translate(x:Single, y:Single, z:Single):Void;
	
	
	/* 
	 * Color
	 */
	public function background(value1:Int, value2:Int, value3:Int):Void;
	public function fill(value1:Single, value2:Single, value3:Single, alpha:Single):Void;
	public function noFill():Void;
	public function noStroke():Void;
	public function stroke(value1:Single, value2:Single, value3:Single, alpha:Single):Void;
	
	/* 
	 * Typography
	 */
	public function createFont(name:String, size:Single, smooth:Bool):PFont;
	public function loadFont(fontname:String):PFont;
	public function text(stringdata:String, x:Single, y:Single):Void;
	public function textFont(font:PFont, size:Single):Void;
	
	/*
	 * Math
	 */
	public function abs(value:Single):Single;
	public function ceil(value:Single):Int;
	public function constrain(value:Single, min:Single, max:Single):Single;
	//@:overload(function(x1:Single, y1:Single, x2:Single, y2:Single):Single{})
	public function dist(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single):Single;
	public function exp(value:Single):Single;
	public function floor(value:Single):Int;
	public function lerp(value1:Single, value2:Single, amt:Single):Single;
	public function log(value:Single):Single;
	//@:overload(function(a:Single, b:Single):Single {})
	public function mag(a:Single, b:Single, c:Single):Single;
	public function map(value:Single, low1:Single, high1:Single, low2:Single, high2:Single):Single;
	public function norm(value:Single, low:Single, high:Single):Single;
	public function round(value:Single):Int;
	public function sq(value:Single):Single;
	public function sqrt(value:Single):Single;
	
	static public function main(args:jvm.NativeArray<String>):Void;
}