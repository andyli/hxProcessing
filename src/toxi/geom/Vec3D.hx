package toxi.geom;

#if !jvm
private typedef Single = Float;
#end

extern class Vec3D {
	public function new(x:Single, y:Single, z:Single):Void;
	public function add(v:Vec3D):Vec3D;
	public function sub(v:Vec3D):Vec3D;
	public function cross(v:Vec3D):Vec3D;
	
	public function x():Single;
	public function y():Single;
	public function z():Single;
}
