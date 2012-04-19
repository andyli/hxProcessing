package toxi.geom;

#if !java
private typedef Single = Float;
#end

extern class Rect {
	public var height:Single;
	public var width:Single;
	public var x:Single;
	public var y:Single;

	@:overload(function(topLeft:toxi.geom.ReadonlyVec2D, bottomRight:toxi.geom.ReadonlyVec2D):Void {})
	@:overload(function(x:Single, y:Single, width:Single, height:Single):Void {})
	public function new():Void;
	public function containsPoint(p:ReadonlyVec2D):Bool;
	public function copy():Rect;
	static public function fromCenterExtent(center:ReadonlyVec2D, extent:Vec2D):Rect;
	public function getArea():Single;
	public function getAspect():Single;
	public function getBottom():Single;
	public function getBottomRight():Vec2D;
	public function getCentroid():Vec2D;
	public function getCircumference():Single;
	public function getDimensions():Vec2D;
	public function getLeft():Single;
	public function getRight():Single;
	public function getTop():Single;
	public function getTopLeft():Vec2D;
	public function intersectsRect(r:Rect):Bool;
	public function scale(s:Single):Rect;
	@:overload( function (x:Single, y:Single, w:Single, h:Single):Rect {})
	public function set(r:Rect):Rect;
	public function setDimension(dim:Vec2D):Rect;
	public function setPosition(pos:Vec2D):Rect;
	public function toString():String;
	public function union(r:Rect):Rect;
}
