package processing.core;

#if !jvm
typedef Single = Float;
#end

extern class PShape {
	public function new():Void;

	public var width:Single;
	public var height:Single;
	
	public function isVisible():Bool;
	public function setVisible(visible:Bool):Void;
	public function disableStyle():Void;
	public function enableStyle():Void;
	public function getChild(target:String):Null<PShape>;
	public function translate(x:Single, y:Single, z:Single):Void;
	public function rotate(angle:Single):Void;
	public function rotateX(angle:Single):Void;
	public function rotateY(angle:Single):Void;
	public function rotateZ(angle:Single):Void;
	public function scale(x:Single, y:Single, z:Single):Void;
}