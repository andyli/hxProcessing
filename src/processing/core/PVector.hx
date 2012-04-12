package processing.core;

#if !jvm
private typedef Single = Float;
#end

extern class PVector {
	public var x:Single;
	public var y:Single;
	public var z:Single;

	public function new(x:Single, y:Single, z:Single):Void;	
	
	public function set(x:Single, y:Single, z:Single):Void;
	public function get():PVector;
	public function mag():Single;
	static public function add(v1:PVector, v2:PVector):PVector;
	static public function sub(v1:PVector, v2:PVector):PVector;
	static public function mult(v1:PVector, v2:PVector):PVector;
	static public function div(v1:PVector, v2:PVector):PVector;
	public function dot(v:PVector):Single;
	public function cross(v:PVector):PVector;
	public function normalize():Void;
	public function limit(max:Single):Void;
	static public function angleBetween(v1:PVector, v2:PVector):Single;
	public function array():jvm.NativeArray<Single>;
}
