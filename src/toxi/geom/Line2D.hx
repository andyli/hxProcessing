package toxi.geom;

#if !java
private typedef Single = Float;
#end

extern class Line2D {
	public function new(a:ReadonlyVec2D, b:ReadonlyVec2D):Void;
	public function closestPointTo(p:ReadonlyVec2D):Vec2D;
	public function copy():Line2D;
	public function equals(obj:Dynamic):Bool;
	public function getDirection():Vec2D;
	public function getLength():Single;
	public function getLengthSquared():Single;
	public function getMidPoint():Vec2D;
	public function getNormal():Vec2D;
	public function getTheta():Single;
	public function hasEndPoint(p:Vec2D):Bool;
	public function hashCode():Int;
	public function offsetAndGrowBy(offset:Single, scale:Single, ref:Vec2D):Line2D;
	public function scale(scale:Single):Line2D;
	public function set(a:Vec2D, b:Vec2D):Line2D;
}
