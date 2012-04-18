package processing.core;

#if !jvm private typedef Single = Float; #end

extern class PMatrix2D implements processing.core.PMatrix {

	public var m00:Single;
	public var m01:Single;
	public var m02:Single;
	public var m10:Single;
	public var m11:Single;
	public var m12:Single;

	@:overload(function(matrix:PMatrix):Void{})
	@:overload(function(m00:Single, m01:Single, m02:Single, m10:Single, m11:Single, m12:Single):Void{})
	public function new():Void;
	
	
	@:overload(function(source:PMatrix3D):Void{})
	/* Multiply this matrix by another. */
	@:overload(function(source:PMatrix):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	public function apply(source:PMatrix2D):Void;
	
	public function determinant():Single;
	
	/* Copies the matrix contents into a 6 entry float array. */
	@:overload(function(target:jvm.NativeArray<Single>):jvm.NativeArray<Single>{})
	/* Returns a copy of this PMatrix. */
	public function get():PMatrix;
	
	/* Invert this matrix. */
	public function invert():Bool;
	
	/* Multiply the x and y coordinates of a PVector against this matrix. */
	@:overload(function(source:PVector, target:PVector):PVector{})
	/* Multiply a two element vector against this matrix. */
	public function mult(vec:jvm.NativeArray<Single>, out:jvm.NativeArray<Single>):jvm.NativeArray<Single>;
	
	public function multX(x:Single, y:Single):Single;
	
	public function multY(x:Single, y:Single):Single;
	
	@:overload(function(left:PMatrix3D):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	/* Apply another matrix to the left of this one. */
	public function preApply(left:PMatrix2D):Void;
	
	public function print():Void;
	
	public function reset():Void;
	
	@:overload(function(angle:Single, v0:Single, v1:Single, v2:Single):Void{})
	public function rotate(angle:Single):Void;
	
	public function rotateX(angle:Single):Void;
	
	public function rotateY(angle:Single):Void;
	
	public function rotateZ(angle:Single):Void;
	
	@:overload(function(sx:Single, sy:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	public function scale(s:Single):Void;
	
	@:overload(function(src:PMatrix3D):Void{})
	@:overload(function(matrix:PMatrix):Void{})
	@:overload(function(m00:Single, m01:Single, m02:Single, m10:Single, m11:Single, m12:Single):Void{})
	@:overload(function(m00:Single, m01:Single, m02:Single, m03:Single, m10:Single, m11:Single, m12:Single, m13:Single, m20:Single, m21:Single, m22:Single, m23:Single, m30:Single, m31:Single, m32:Single, m33:Single):Void{})
	public function set(source:jvm.NativeArray<Single>):Void;
	
	public function shearX(angle:Single):Void;
	
	public function shearY(angle:Single):Void;
	
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	public function translate(tx:Single, ty:Single):Void;
	
	/* Transpose this matrix. */
	public function transpose():Void;
	
	
}