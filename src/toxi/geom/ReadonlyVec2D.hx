package toxi.geom;

#if !jvm
private typedef Single = Float;
#end

extern class ReadonlyVec2D {
	public function add(v:ReadonlyVec2D):Vec2D;
	public function angleBetween(v:ReadonlyVec2D, forceNormalize:Bool):Single;
	public function bisect(p:Vec2D):Vec3D;
	public function compareTo(v:ReadonlyVec2D):Int;
	public function copy():Vec2D;
	public function cross(v:ReadonlyVec2D):Single;
	public function distanceTo(v:ReadonlyVec2D):Single;
	public function distanceToSquared(v:ReadonlyVec2D):Single;
	public function dot(v:ReadonlyVec2D):Single;
	public function equals(obj:Dynamic):Bool;
	public function equalsWithTolerance(v:ReadonlyVec2D, tolerance:Single):Bool;
	public function getAbs():Vec2D;
	public function getComponent(id:Int):Single;
	public function getFloored():Vec2D;
	public function getFrac():Vec2D;
	public function getInverted():Vec2D;
	public function getLimited(lim:Single):Vec2D;
	public function getNormalized():Vec2D;
	public function getNormalizedTo(len:Single):Vec2D;
	public function getPerpendicular():Vec2D;
	public function getReciprocal():Vec2D;
	public function getReflected(normal:ReadonlyVec2D):Vec2D;
	public function getRotated(theta:Single):Vec2D;
	public function getSignum():Vec2D;
	public function heading():Single;
	public function interpolateTo(v:ReadonlyVec2D, f:Single):Vec2D;
	public function isInCircle(sO:ReadonlyVec2D, sR:Single):Bool;
	public function isInTriangle(a:Vec2D, b:Vec2D, c:Vec2D):Bool;
	public function isMajorAxis(tolerance:Single):Bool;
	public function isZeroVector():Bool;
	public function magnitude():Single;
	public function magSquared():Single;
	public function max(v:Vec2D):Vec2D;
	public function min(v:Vec2D):Vec2D;
	public function scale(s:ReadonlyVec2D):Vec2D;
	public function sub(v:ReadonlyVec2D):Vec2D;
	public function tangentNormalOfEllipse(eO:Vec2D, eR:Vec2D):Vec2D;
	public function to3DXY():Vec3D;
	public function to3DXZ():Vec3D;
	public function to3DYZ():Vec3D;
	public function toArray():jvm.NativeArray<Single>;
	public function toCartesian():Vec2D;
	public function toPolar():Vec2D;
	public function x():Single;
	public function y():Single;
}
