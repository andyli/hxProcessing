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
import toxi.geom.Line2D;

#if !jvm
private typedef Single = Float;
#end

class Pt extends Vec3D {
	public function new():Void {
		super(0, 0, 0);
		t = 0;
	}
	
	public function set_(x:Single, y:Single, z:Single):Pt {
		set(new Vec3D(x, y, z));
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
	
	var triangles:Array<Array<Triangle3D>>;
	
	function drawTri(tri:Triangle3D):Void {
		beginShape();
		vertex(tri.a.x(), tri.a.y(), tri.a.z());
		vertex(tri.b.x(), tri.b.y(), tri.b.z());
		vertex(tri.c.x(), tri.c.y(), tri.c.z());
		endShape(PConstants.CLOSE);
	}
	
	override public function setup():Void {
		size(800, 600, PConstants.P3D);
		frameRate(24);
		smooth();
		
		font = loadFont("CourierNew36.vlw");
		textFont(font, fontSize = 12);
		
		triangles = [];
		var pl = [new Pt().set_(0, 3, 0), new Pt().set_(3, 0, 0), new Pt().set_(0, -3, 0), new Pt().set_(-3, 0, 0)];
		var pts = [pl];
		for (i in 0...4) {
			var pln = [];
			var tril = [];
			pl = pts[pts.length-1];
			
			var ptp = pl[pl.length-1];
			for (i in 0...pl.length) {
				var pt = pl[i];
				var tri = Triangle2D.createEquilateralFrom(pt.to2DXY(), ptp.to2DXY());
				pln.push(new Pt().set_(tri.b.x(), tri.b.y(), 0));
				pln.push(new Pt().set_(tri.c.x(), tri.c.y(), 0));
				pln.push(new Pt().set_(tri.a.x(), tri.a.y(), 0));
				tril.push(new Triangle3D(tri.a.to3DXY(), tri.b.to3DXY(), tri.c.to3DXY()));
				ptp = pt;
			}
			
			triangles.push(tril);
			pts.push(pln);
		}
		
		triangles.reverse();
	}
	
	override public function draw():Void {
		background(0, 0, 0);
		
		lights();
		pointLight(255, 255, 255, 35, 40, 0);
		
		translate(width * 0.5, height * 0.5, 0);
		scale(20, 20, 20);
		rotateY(frameCount * 0.05);
		noStroke();
		var cl = color;
		var zInc = 1;
		pushMatrix();
		for (tril in triangles) {
			fill(cl.red() * 255, cl.green() * 255, cl.blue() * 255, 255);
			cl = cl.getLightened(0.1);
			for (tri in tril) {
				var a = tri.a.copy();
				var b = tri.b.copy();
				var c = tri.a.interpolateTo(tri.b, 0.5).interpolateTo(tri.c, 0.125);
				a.setComponent(2, zInc);
				b.setComponent(2, zInc);
				drawTri(new Triangle3D(a, b, c));
			}
			translate(0, 0 , zInc);
		}
		popMatrix();
		var cl = color;
		for (tril in triangles) {
			fill(cl.red() * 255, cl.green() * 255, cl.blue() * 255, 255);
			cl = cl.getLightened(0.1);
			for (tri in tril) {
				var a = tri.a.copy();
				var b = tri.b.copy();
				var c = tri.a.interpolateTo(tri.b, 0.5).interpolateTo(tri.c, 0.125);
				a.setComponent(2, -zInc);
				b.setComponent(2, -zInc);
				drawTri(new Triangle3D(a, b, c));
			}
			translate(0, 0 , -zInc);
		}
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
}