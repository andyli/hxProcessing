package toxi.geom;

#if !jvm
private typedef Single = Float;
#end

extern class Vec3D implements ReadonlyVec3D {
	public function new(x:Single, y:Single, z:Single):Void;
	
	public function set(x:Single, y:Single, z:Single):Vec3D;
	
	//from ReadonlyVec3D
	
	public function add(v:Vec3D):Vec3D;
	public function angleBetween(v:ReadonlyVec3D, forceNormalize:Bool):Single;
	public function compareTo(v:ReadonlyVec3D):Int;
	public function copy():Vec3D;
	public function cross(v:ReadonlyVec3D):Vec3D;
	public function crossInto(v:ReadonlyVec3D, result:Vec3D):Vec3D;
	public function distanceTo(v:ReadonlyVec3D):Single;
	public function distanceToSquared(v:ReadonlyVec3D):Single;
	public function dot(v:ReadonlyVec3D):Single;
	public function equals(obj:Dynamic):Bool;
	public function equalsWithTolerance(v:ReadonlyVec3D, tolerance:Single):Bool;
	public function getAbs():Vec3D;
	public function getComponent(id:Int):Single;
	public function getFloored():Vec3D;
	public function getFrac():Vec3D;
	public function getInverted():Vec3D;
	public function getLimited(lim:Single):Vec3D;
	public function getNormalized():Vec3D;
	public function getNormalizedTo(len:Single):Vec3D;
	public function getReciprocal():Vec3D;
	public function getReflected(normal:ReadonlyVec3D):Vec3D;
	public function getRotatedAroundAxis(axis:ReadonlyVec3D, theta:Single):Vec3D;
	public function getRotatedX(theta:Single):Vec3D;
	public function getRotatedY(theta:Single):Vec3D;
	public function getRotatedZ(theta:Single):Vec3D;
	public function getSignum():Vec3D;
	public function headingXY():Single;
	public function headingXZ():Single;
	public function headingYZ():Single;
	public function interpolateTo(v:ReadonlyVec3D, f:Single):Vec3D;
	public function isInAABB(boxOrigin:Vec3D, boxExtent:Vec3D):Bool;
	public function isMajorAxis(tolerance:Single):Bool;
	public function isZeroVector():Bool;
	public function magnitude():Single;
	public function magSquared():Single;
	public function scale(s:ReadonlyVec3D):Vec3D;
	public function sub(v:ReadonlyVec3D):Vec3D;
	public function toArray():jvm.NativeArray<Single>;
	public function toCartesian():Vec3D;
	public function toSpherical():Vec3D;
	public function to2DXY():Vec2D;
	public function to2DXZ():Vec2D;
	public function to2DYZ():Vec2D;
	public function x():Single;
	public function y():Single;
	public function z():Single;
}
