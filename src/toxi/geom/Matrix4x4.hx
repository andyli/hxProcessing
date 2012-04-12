package toxi.geom;

import jvm.NativeArray;

extern class Matrix4x4 {
	public function new(v11:Float, v12:Float, v13:Float, v14:Float, v21:Float, v22:Float, v23:Float, v24:Float, v31:Float, v32:Float, v33:Float, v34:Float, v41:Float, v42:Float, v43:Float, v44:Float):Void;
	public function applyTo(v:Vec3D):Vec3D;
	public function getInverted():Matrix4x4;
	public function invert():Matrix4x4;
	public function multiply(mat:Matrix4x4):Matrix4x4;
	public function transpose():Matrix4x4;
}
