package toxi.geom;

#if !java
private typedef Single = Float;
#end

extern class Vec2D implements ReadonlyVec2D {
	@:overload(function(x:Single, y:Single):Void {})
	@:overload(function(v:ReadonlyVec2D):Void {})
	public function new():Void;
	
	public function abs():Vec2D;
	public function add(v:ReadonlyVec2D):Vec2D;
	public function addSelf(v:Vec2D):Vec2D;
	public function angleBetween(v:ReadonlyVec2D, forceNormalize:Bool):Single;
	public function bisect(b:Vec2D):Vec3D;
	public function clear():Vec2D;
	public function compareTo(v:ReadonlyVec2D):Int;
	public function constrain(min:Vec2D, max:Vec2D):Vec2D;
	public function copy():Vec2D;
	public function cross(v:ReadonlyVec2D):Single;
	public function distanceTo(v:ReadonlyVec2D):Single;
	public function distanceToSquared(v:ReadonlyVec2D):Single;
	public function dot(v:ReadonlyVec2D):Single;
	public function equals(obj:Dynamic):Bool;
	public function equalsWithTolerance(v:ReadonlyVec2D, tolerance:Single):Bool;
	public function floor():Vec2D;
	public function frac():Vec2D;
	static public function fromTheta(theta:Single):Vec2D;
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
	public function hashCode():Int;
	public function heading():Single;
	public function interpolateTo(v:ReadonlyVec2D, f:Single):Vec2D;
	public function interpolateToSelf(v:ReadonlyVec2D, f:Single):Vec2D;
	public function invert():Vec2D;
	public function isInCircle(sO:ReadonlyVec2D, sR:Single):Bool;
	public function isInTriangle(a:Vec2D, b:Vec2D, c:Vec2D):Bool;
	public function isMajorAxis(tol:Single):Bool;
	public function isZeroVector():Bool;
	public function jitter(jv:Vec2D):Vec2D;
	public function limit(lim:Single):Vec2D;
	public function magnitude():Single;
	public function magSquared():Single;
	public function max(v:Vec2D):Vec2D;
	public function maxSelf(v:Vec2D):Vec2D;
	public function min(v:Vec2D):Vec2D;
	public function minSelf(v:Vec2D):Vec2D;
	public function normalize():Vec2D;
	public function normalizeTo(len:Single):Vec2D;
	public function perpendicular():Vec2D;
	static public function randomVector():Vec2D;
	public function reciprocal():Vec2D;
	public function reflect(normal:ReadonlyVec2D):Vec2D;
	public function rotate(theta:Single):Vec2D;
	public function roundToAxis():Vec2D;
	public function scale(s:ReadonlyVec2D):Vec2D;
	public function scaleSelf(s:Vec2D):Vec2D;
	public function set(v:ReadonlyVec2D):Vec2D;
	public function setComponent(id:Int, val:Single):Vec2D;
	public function signum():Vec2D;
	public function sub(v:ReadonlyVec2D):Vec2D;
	public function subSelf(v:Vec2D):Vec2D;
	public function tangentNormalOfEllipse(eO:Vec2D, eR:Vec2D):Vec2D;
	public function to3DXY():Vec3D;
	public function to3DXZ():Vec3D;
	public function to3DYZ():Vec3D;
	public function toArray():java.NativeArray<Single>;
	public function toCartesian():Vec2D;
	public function toPolar():Vec2D;
	public function toString():String;
	public function x():Single;
	public function y():Single;
}
