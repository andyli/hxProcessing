package toxi.geom;

#if !jvm
private typedef Single = Float;
#end

extern class Triangle2D {
	public var a:Vec2D;
	public var b:Vec2D;
	public var c:Vec2D;
	public var centroid:Vec2D;
	
	public function new(a:Vec3D, b:Vec3D, c:Vec3D):Void;
	public function adjustTriangleSizeBy(offAB:Single, offBC:Single, offCA:Single):Triangle2D;
	public function computeCentroid():Vec2D;
	public function containsPoint(p:ReadonlyVec2D):Bool;
	public function copy():Triangle2D;
	static public function createEquilateralFrom(a:ReadonlyVec2D, b:ReadonlyVec2D):Triangle2D;
	public function flipVertexOrder():Triangle2D;
	public function fromBarycentric(p:ReadonlyVec3D):Vec2D;
	public function getArea():Single;
	public function getCircumference():Single;
	public function getClosestPointTo(p:ReadonlyVec2D):Vec2D;
	public function intersectsTriangle(tri:Triangle2D):Bool;
	public function isClockwise():Bool;
	public function set(a2:Vec2D, b2:Vec2D, c2:Vec2D):Void;
	public function toString():String;
}
