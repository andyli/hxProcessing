package processing.core;

#if !jvm private typedef Single = Float; #end

extern class PVector {

	/* ( begin auto-generated from PVector_x.xml ) The x component of the vector. */
	public var x:Single;
	/* ( begin auto-generated from PVector_y.xml ) The y component of the vector. */
	public var y:Single;
	/* ( begin auto-generated from PVector_z.xml ) The z component of the vector. */
	public var z:Single;

	/* Constructor for a 2D vector: z coordinate is set to 0. */
	@:overload(function(x:Single, y:Single):Void{})
	/* Constructor for a 3D vector. */
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/* Constructor for an empty vector: x, y, and z are set to 0. */
	public function new():Void;
	
	
	/* Add two vectors */
	@:overload(function(v1:PVector, v2:PVector):PVector{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/* Add two vectors into a target vector */
	@:overload(function(v1:PVector, v2:PVector, target:PVector):PVector{})
	/* ( begin auto-generated from PVector_add.xml ) Adds x, y, and z components to a vector, adds one vector to another, or adds two independent vectors together. */
	public function add(v:PVector):Void;
	
	/* ( begin auto-generated from PVector_angleBetween.xml ) Calculates and returns the angle (in radians) between two vectors. */
	static public function angleBetween(v1:PVector, v2:PVector):Single;
	
	/* ( begin auto-generated from PVector_array.xml ) Return a representation of this vector as a float array. */
	public function array():jvm.NativeArray<Single>;
	
	@:overload(function(v:PVector, target:PVector):PVector{})
	@:overload(function(v1:PVector, v2:PVector, target:PVector):PVector{})
	/* ( begin auto-generated from PVector_cross.xml ) Calculates and returns a vector composed of the cross product between two vectors. */
	public function cross(v:PVector):PVector;
	
	@:overload(function(v1:PVector, v2:PVector):Single{})
	/* ( begin auto-generated from PVector_dist.xml ) Calculates the Euclidean distance between two points (considering a point as a vector object). */
	public function dist(v:PVector):Single;
	
	/* Divide each element of one vector by the elements of another vector. */
	@:overload(function(v:PVector):Void{})
	/* Divide a vector by a scalar and return the result in a new vector. */
	@:overload(function(v:PVector, n:Single):PVector{})
	/* Divide each element of one vector by the individual elements of another vector, and return the result as a new PVector. */
	@:overload(function(v1:PVector, v2:PVector):PVector{})
	/* Divide a vector by a scalar and store the result in another vector. */
	@:overload(function(v:PVector, n:Single, target:PVector):PVector{})
	@:overload(function(v1:PVector, v2:PVector, target:PVector):PVector{})
	/* ( begin auto-generated from PVector_div.xml ) Divides a vector by a scalar or divides one vector by another. */
	public function div(n:Single):Void;
	
	@:overload(function(v1:PVector, v2:PVector):Single{})
	@:overload(function(x:Single, y:Single, z:Single):Single{})
	/* ( begin auto-generated from PVector_dot.xml ) Calculates the dot product of two vectors. */
	public function dot(v:PVector):Single;
	
	public function equals(obj:Dynamic):Bool;
	
	@:overload(function(target:jvm.NativeArray<Single>):jvm.NativeArray<Single>{})
	/* ( begin auto-generated from PVector_get.xml ) Gets a copy of the vector, returns a PVector object. */
	public function get():PVector;
	
	public function hashCode():Int;
	
	/* Calculate the angle of rotation for this vector (only 2D vectors) */
	public function heading2D():Single;
	
	@:overload(function(x:Single, y:Single, z:Single, amt:Single):Void{})
	/* Linear interpolate the vector to another vector */
	public function lerp(v:PVector, amt:Single):Void;
	
	/* ( begin auto-generated from PVector_limit.xml ) Limit the magnitude of this vector to the value used for the max parameter. */
	public function limit(max:Single):Void;
	
	/* ( begin auto-generated from PVector_mag.xml ) Calculates the magnitude (length) of the vector and returns the result as a float (this is simply the equation sqrt(x*x + y*y + z*z).) ( end auto-generated ) */
	public function mag():Single;
	
	/* Calculate the squared magnitude of the vector Faster if the real length is not required in the case of comparing vectors, etc. */
	public function magSq():Single;
	
	@:overload(function(v:PVector):Void{})
	@:overload(function(v:PVector, n:Single):PVector{})
	@:overload(function(v1:PVector, v2:PVector):PVector{})
	/* Multiply a vector by a scalar, and write the result into a target PVector. */
	@:overload(function(v:PVector, n:Single, target:PVector):PVector{})
	@:overload(function(v1:PVector, v2:PVector, target:PVector):PVector{})
	/* ( begin auto-generated from PVector_mult.xml ) Multiplies a vector by a scalar or multiplies one vector by another. */
	public function mult(n:Single):Void;
	
	@:overload(function(target:PVector):PVector{})
	/* ( begin auto-generated from PVector_normalize.xml ) Normalize the vector to length 1 (make it a unit vector). */
	public function normalize():Void;
	
	/* Rotate the vector by an angle (only 2D vectors), magnitude remains the same */
	public function rotate(theta:Single):Void;
	
	@:overload(function(v:PVector):Void{})
	/* ( begin auto-generated from PVector_set.xml ) Sets the x, y, and z component of the vector using three separate variables, the data from a PVector, or the values from a float array. */
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/* Set the x, y (and maybe z) coordinates using a float[] array as the source. */
	public function set(source:jvm.NativeArray<Single>):Void;
	
	/* Sets the magnitude of this vector, storing the result in another vector. */
	@:overload(function(target:PVector, len:Single):PVector{})
	/* ( begin auto-generated from PVector_setMag.xml ) Set the magnitude of this vector to the value used for the len parameter. */
	public function setMag(len:Single):Void;
	
	/* Subtract one vector from another */
	@:overload(function(v1:PVector, v2:PVector):PVector{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/* Subtract one vector from another and store in another vector */
	@:overload(function(v1:PVector, v2:PVector, target:PVector):PVector{})
	/* ( begin auto-generated from PVector_sub.xml ) Subtracts x, y, and z components from a vector, subtracts one vector from another, or subtracts two independent vectors. */
	public function sub(v:PVector):Void;
	
	public function toString():String;
	
	
}