package;

import processing.core.PApplet;
import processing.core.PConstants;
import processing.core.PFont;
import processing.core.PVector;
import org.casalib.util.NumberUtil;
import toxi.color.TColor;
import toxi.geom.Triangle3D;
import toxi.geom.Triangle2D;
import toxi.geom.Vec3D;
import toxi.geom.Vec2D;

#if !jvm
private typedef Single = Float;
#end

class Pt extends Vec3D {
	public function new():Void {
		super(0, 0, 0);
		t = 0;
	}
	
	public function set_(x:Single, y:Single, z:Single):Pt {
		set(x, y, z);
		return this;
	}
	
	public var t:Float;
	public var target:Vec3D;
	public var size:Float;
}

class Demo2 extends PApplet {
	static var end = 400 * Math.PI;
	
	static var color = TColor.newHex("f18940");
	
	var font:PFont;
	var fontSize:Float;
	
	var pts:Array<Array<Pt>>;
	var pt:Pt;
	
	override public function setup():Void {
		size(800, 600, PConstants.P3D);
		frameRate(24);
		smooth();
		
		font = loadFont("CourierNew36.vlw");
		textFont(font, fontSize = 12);
		
		
		var pl = [new Pt().set_(0, 3, 0), new Pt().set_(3, 0, 0), new Pt().set_(0, -3, 0), new Pt().set_(-3, 0, 0)];
		pts = [pl];
		for (i in 0...1) {
			var pln = [];
			pl = pts[pts.length-1];
			
			var ptp = pl[pl.length-1];
			for (i in 0...pl.length) {
				var pt = pl[i];
				var tri = Triangle2D.createEquilateralFrom(pt.to2DXY(), ptp.to2DXY());
				pln.push(new Pt().set_(tri.a.x(), tri.a.y(), 0));
				pln.push(new Pt().set_(tri.b.x(), tri.b.y(), 0));
				pln.push(new Pt().set_(tri.c.x(), tri.c.y(), 0));
				pln.push(new Pt().set_(tri.a.x(), tri.a.y(), 0));
				ptp = pt;
			}
			
			
			pts.push(pln);
		}
	}
	
	override public function draw():Void {
		background(0, 0, 0);
		stroke(color.red() * 255, color.green() * 255, color.blue() * 255, 255);
		translate(width * 0.5, height * 0.5, 0);
		scale(20, 20, 20);
		rotateY(frameCount * 0.05);
		for (pl in pts) {
			var ptp = pl[pl.length-1];
			for (i in 0...pl.length) {
				var pt = pl[i];
				line(pt.x(), pt.y(), pt.z(), ptp.x(), ptp.y(), ptp.z());
				ptp = pt;
			}
		}
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
}