package processing.core;

#if !java private typedef Single = Float; #end

extern interface PMatrix  {

	

	@:overload(function(source:PMatrix3D):Void{})
	/** Multiply this matrix by another. */
	@:overload(function(source:PMatrix):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	public function apply(source:PMatrix2D):Void;
	
	public function determinant():Single;
	
	/** Copies the matrix contents into a float array. */
	@:overload(function(target:java.NativeArray<Single>):java.NativeArray<Single>{})
	/** Returns a copy of this PMatrix. */
	public function get():PMatrix;
	
	/** Invert this matrix. */
	public function invert():Bool;
	
	/** Multiply a PVector by this matrix. */
	@:overload(function(source:PVector, target:PVector):PVector{})
	/** Multiply a multi-element vector against this matrix. */
	public function mult(source:java.NativeArray<Single>, target:java.NativeArray<Single>):java.NativeArray<Single>;
	
	@:overload(function(left:PMatrix3D):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	/** Apply another matrix to the left of this one. */
	public function preApply(left:PMatrix2D):Void;
	
	public function reset():Void;
	
	@:overload(function(angle:Single, v0:Single, v1:Single, v2:Single):Void{})
	public function rotate(angle:Single):Void;
	
	public function rotateX(angle:Single):Void;
	
	public function rotateY(angle:Single):Void;
	
	public function rotateZ(angle:Single):Void;
	
	@:overload(function(sx:Single, sy:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	public function scale(s:Single):Void;
	
	@:overload(function(src:PMatrix):Void{})
	@:overload(function(m00:Single, m01:Single, m02:Single, m10:Single, m11:Single, m12:Single):Void{})
	@:overload(function(m00:Single, m01:Single, m02:Single, m03:Single, m10:Single, m11:Single, m12:Single, m13:Single, m20:Single, m21:Single, m22:Single, m23:Single, m30:Single, m31:Single, m32:Single, m33:Single):Void{})
	public function set(source:java.NativeArray<Single>):Void;
	
	public function shearX(angle:Single):Void;
	
	public function shearY(angle:Single):Void;
	
	@:overload(function(tx:Single, ty:Single, tz:Single):Void{})
	public function translate(tx:Single, ty:Single):Void;
	
	/** Transpose this matrix. */
	public function transpose():Void;
	
	
}