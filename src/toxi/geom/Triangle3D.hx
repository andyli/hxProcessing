package toxi.geom;

#if !jvm
private typedef Single = Float;
#end

extern class Triangle3D {
	public var a:Vec3D;
	public var b:Vec3D;
	public var c:Vec3D;
	public var centroid:Vec3D;
	public var normal:Vec3D;
	
	public function new(a:Vec3D, b:Vec3D, c:Vec3D):Void;
	public function closestPointOnSurface(p:Vec3D):Vec3D;
	public function computeCentroid():Vec3D;
	public function computeNormal():Vec3D;
	public function flipVertexOrder():Triangle3D;
	public function fromBarycentric(p:ReadonlyVec3D):Vec3D;
	public function getClosestPointTo(p:ReadonlyVec3D):Vec3D;
	public function isClockwiseInXY():Bool;
	public function isClockwiseInXZ():Bool;
	public function isClockwiseInYZ():Bool;
	public function set(a2:Vec3D, b2:Vec3D, c2:Vec3D):Void;
	public function toBarycentric(p:ReadonlyVec3D):Vec3D;
	
	public function toString():String;
	
	static public function createEquilateralFrom(a:Vec3D, b:Vec3D):Triangle3D;
}
