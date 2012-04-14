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
	
	public function beginShape():Void;
	public function bezierVertex(cx1:Single, cy1:Single, cz1:Single, cx2:Single, cy2:Single, cz2:Single, x:Single, y:Single, z:Single):Void;
	public function curveVertex(x:Single, y:Single, z:Single):Void;
	public function endShape(MODE:Int):Void;
	public function texture(img:PImage):Void;
	public function textureMode(MODE:Int):Void;
	public function vertex(x:Single, y:Single, z:Single):Void;
	
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
	 * Output
	 */
	public function print(data:Dynamic):Void;
	public function println(data:Dynamic):Void;
	
	public function save(filename:String):Void;
	public function saveFrame(filename:String):Void;
	
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
	 * Lights, Camera
	 */
	public function ambientLight(v1:Single, v2:Single, v3:Single, x:Single, y:Single, z:Single):Void;
	public function directionalLight(v1:Single, v2:Single, v3:Single, nx:Single, ny:Single, nz:Single):Void;
	public function lightFalloff(constant:Single, linear:Single, quadratic:Single):Void;
	public function lightSpecular(v1:Single, v2:Single, v3:Single):Void;
	public function lights():Void;
	public function noLights():Void;
	public function normal(nx:Single, ny:Single, nz:Single):Void;
	public function pointLight(v1:Single, v2:Single, v3:Single, x:Single, y:Single, z:Single):Void;
	public function spotLight(v1:Single, v2:Single, v3:Single, x:Single, y:Single, z:Single, nx:Single, ny:Single, nz:Single, angle:Single, concentration:Single):Void;
	
	public function beginCamera():Void;
	public function camera(eyeX:Single, eyeY:Single, eyeZ:Single, centerX:Single, centerY:Single, centerZ:Single, upX:Single, upY:Single, upZ:Single):Void;
	public function endCamera():Void;
	public function frustum(left:Single, right:Single, bottom:Single, top:Single, near:Single, far:Single):Void;
	public function ortho(left:Single, right:Single, bottom:Single, top:Single, near:Single, far:Single):Void;
	public function perspective(fov:Single, aspect:Single, zNear:Single, zFar:Single):Void;
	public function printCamera():Void;
	public function printProjection():Void;
	
	public function modelX(x:Single, y:Single, z:Single):Single;
	public function modelY(x:Single, y:Single, z:Single):Single;
	public function modelZ(x:Single, y:Single, z:Single):Single;
	public function screenX(x:Single, y:Single, z:Single):Single;
	public function screenY(x:Single, y:Single, z:Single):Single;	
	public function screenZ(x:Single, y:Single, z:Single):Single;
	
	public function ambient(v1:Single, v2:Single, v3:Single):Void;
	public function emissive(v1:Single, v2:Single, v3:Single):Void;
	public function shininess(shine:Single):Void;
	public function specular(v1:Single, v2:Single, v3:Single):Void;
	
	/* 
	 * Color
	 */
	public function background(value1:Int, value2:Int, value3:Int):Void;
	public function fill(value1:Single, value2:Single, value3:Single, alpha:Single):Void;
	public function noFill():Void;
	public function noStroke():Void;
	public function stroke(value1:Single, value2:Single, value3:Single, alpha:Single):Void;
	
	/*
	 * Image
	 */
	public function image(img:PImage, x:Single, y:Single, width:Single, height:Single):Void;
	public function imageMode(MODE:Int):Void;
	public function loadImage(filename:String):Null<PImage>;
	public function noTint():Void;
	public function requestImage(filename:String):Null<PImage>;
	public function tint(value1:Single, value2:Single, value3:Single, alpha:Single):Void;
	
	public function blend(srcImg:PImage, x:Int, y:Int, width:Int, height:Int, dx:Int, dy:Int, dwidth:Int, dheight:Int, MODE:Int):Void;
	public function copy(srcImg:PImage, x:Int, y:Int, width:Int, height:Int, dx:Int, dy:Int, dwidth:Int, dheight:Int):Void;
	public function filter(MODE:Int, level:Single):Void;
	public function get(x:Int, y:Int, width:Int, height:Int):PImage;
	public function loadPixels():Void;
	public var pixels:jvm.NativeArray<Int>;
	public function set(x:Int, y:Int, image:PImage):Void;
	public function updatePixels():Void;
	
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
	
	public function acos(value:Single):Single;
	public function asin(value:Single):Single;
	public function atan(value:Single):Single;
	public function atan2(y:Single, x:Single):Single;
	public function cos(rad:Single):Single;
	public function degrees(value:Single):Single;
	public function radians(value:Single):Single;
	public function sin(rad:Single):Single;
	public function tan(rad:Single):Single;
	
	public function noise(x:Single, y:Single, z:Single):Single;
	public function noiseDetail(octaves:Int, falloff:Single):Void;
	public function noiseSeed(x:Int):Void;
	public function random(low:Single, high:Single):Single;
	public function randomSeed(value:Int):Void;
	
	/* 
	 * Constants
	 */
	static public var HALF_PI:Single;
	static public var PI:Single;
	static public var QUARTER_PI:Single;
	static public var TWO_PI:Single;
	
	static public function main(args:jvm.NativeArray<String>):Void;
}