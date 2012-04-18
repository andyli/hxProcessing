package processing.core;

#if !jvm private typedef Single = Float; #end

extern class PShape implements processing.core.PConstants {

	/* Collections of vertices created with beginShape(). */
	static public var GEOMETRY:Int;
	/* A series of vertex, curveVertex, and bezierVertex calls. */
	static public var PATH:Int;
	/* A line, ellipse, arc, image, etc. */
	static public var PRIMITIVE:Int;
	/* The current colorMode */
	//public var colorMode:Int;
	/* Max value for alpha set by colorMode */
	public var colorModeA:Single;
	/* Max value for red (or hue) set by colorMode */
	public var colorModeX:Single;
	/* Max value for green (or saturation) set by colorMode */
	public var colorModeY:Single;
	/* Max value for blue (or value) set by colorMode */
	public var colorModeZ:Single;
	public var depth:Single;
	/* ( begin auto-generated from PShape_height.xml ) The height of the PShape document. */
	public var height:Single;
	/* To mark the shape dirty upon changes in its geometry */
	public var modified:Bool;
	/* ( begin auto-generated from PShape_width.xml ) The width of the PShape document. */
	public var width:Single;

	@:overload(function(family:Int):Void{})
	public function new():Void;
	
	
	@:overload(function(who:PShape, idx:Int):Void{})
	public function addChild(who:PShape):Void;
	
	/* Add a shape to the name lookup table. */
	public function addName(nom:String, shape:PShape):Void;
	
	@:overload(function(source:PMatrix):Void{})
	@:overload(function(source:PMatrix2D):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	public function applyMatrix(source:PMatrix3D):Void;
	
	public function beginContour():Void;
	
	public function bezierDetail(detail:Int):Void;
	
	@:overload(function(x2:Single, y2:Single, z2:Single, x3:Single, y3:Single, z3:Single, x4:Single, y4:Single, z4:Single):Void{})
	public function bezierVertex(x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	@:overload(function(mode:Int, max:Single):Void{})
	@:overload(function(mode:Int, maxX:Single, maxY:Single, maxZ:Single):Void{})
	@:overload(function(mode:Int, maxX:Single, maxY:Single, maxZ:Single, maxA:Single):Void{})
	/* Set the pivot point for all transformations. */
	public function colorMode(mode:Int):Void;
	
	inline public function colorModeGet():Int {
		return untyped colorMode;
	}
	
	public function contains(x:Single, y:Single):Bool;
	
	public function curveDetail(detail:Int):Void;
	
	public function curveTightness(tightness:Single):Void;
	
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	public function curveVertex(x:Single, y:Single):Void;
	
	/* ( begin auto-generated from PShape_disableStyle.xml ) Disables the shape's style data and uses Processing's current styles. */
	public function disableStyle():Void;
	
	/* Called by the following (the shape() command adds the g) PShape s = loadShapes("blah.svg"); shape(s); */
	public function draw(g:PGraphics):Void;
	
	/* Draws the SVG document. */
	public function drawImpl(g:PGraphics):Void;
	
	/* ( begin auto-generated from PShape_enableStyle.xml ) Enables the shape's style data and ignores Processing's current styles. */
	public function enableStyle():Void;
	
	@:overload(function(mode:Int):Void{})
	public function end():Void;
	
	public function endContour():Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single, a:Single):Void{})
	public function fill(rgb:Int):Void;
	
	/* Same as getChild(name), except that it first walks all the way up the hierarchy to the eldest grandparent, so that children can be found anywhere. */
	public function findChild(target:String):PShape;
	
	public function getCenter():PVector;
	
	@:overload(function(target:String):PShape{})
	/* ( begin auto-generated from PShape_getChild.xml ) Extracts a child shape from a parent shape. */
	public function getChild(index:Int):PShape;
	
	public function getChildCount():Int;
	
	/* Returns the index of child who. */
	public function getChildIndex(who:PShape):Int;
	
	public function getChildren():jvm.NativeArray<PShape>;
	
	/* Get the depth of the shape area (not necessarily the shape boundary). */
	public function getDepth():Single;
	
	/* The shape type, one of GROUP, PRIMITIVE, PATH, or GEOMETRY. */
	public function getFamily():Int;
	
	/* Get the height of the drawing area (not necessarily the shape boundary). */
	public function getHeight():Single;
	
	public function getKind():Int;
	
	public function getName():String;
	
	public function getParam(index:Int):Single;
	
	@:overload(function(target:jvm.NativeArray<Single>):jvm.NativeArray<Single>{})
	public function getParams():jvm.NativeArray<Single>;
	
	public function getParent():PShape;
	
	public function getVertex(index:Int):jvm.NativeArray<Single>;
	
	/* One of VERTEX, BEZIER_VERTEX, CURVE_VERTEX, or BREAK. */
	public function getVertexCode(index:Int):Int;
	
	public function getVertexCodeCount():Int;
	
	public function getVertexCodes():jvm.NativeArray<Int>;
	
	public function getVertexCount():Int;
	
	public function getVertexX(index:Int):Single;
	
	public function getVertexY(index:Int):Single;
	
	public function getVertexZ(index:Int):Single;
	
	/* Get the width of the drawing area (not necessarily the shape boundary). */
	public function getWidth():Single;
	
	/* Return true if this shape is 3D. */
	public function is3D():Bool;
	
	public function isClosed():Bool;
	
	/* ( begin auto-generated from PShape_isVisible.xml ) Returns a boolean value "true" if the image is set to be visible, "false" if not. */
	public function isVisible():Bool;
	
	public function noFill():Void;
	
	public function noStroke():Void;
	
	public function noTexture():Void;
	
	public function noTint():Void;
	
	public function normal(nx:Single, ny:Single, nz:Single):Void;
	
	public function post(g:PGraphics):Void;
	
	@:overload(function(cx:Single, cy:Single, cz:Single, x3:Single, y3:Single, z3:Single):Void{})
	public function quadraticVertex(cx:Single, cy:Single, x3:Single, y3:Single):Void;
	
	/* Remove the child shape with index idx. */
	public function removeChild(idx:Int):Void;
	
	/* ( begin auto-generated from PShape_resetMatrix.xml ) Replaces the current matrix of a shape with the identity matrix. */
	public function resetMatrix():Void;
	
	@:overload(function(angle:Single, v0:Single, v1:Single, v2:Single):Void{})
	/* ( begin auto-generated from PShape_rotate.xml ) Rotates a shape the amount specified by the angle parameter. */
	public function rotate(angle:Single):Void;
	
	/* ( begin auto-generated from PShape_rotateX.xml ) Rotates a shape around the x-axis the amount specified by the angle parameter. */
	public function rotateX(angle:Single):Void;
	
	/* ( begin auto-generated from PShape_rotateY.xml ) Rotates a shape around the y-axis the amount specified by the angle parameter. */
	public function rotateY(angle:Single):Void;
	
	/* ( begin auto-generated from PShape_rotateZ.xml ) Rotates a shape around the z-axis the amount specified by the angle parameter. */
	public function rotateZ(angle:Single):Void;
	
	@:overload(function(x:Single, y:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/* ( begin auto-generated from PShape_scale.xml ) Increases or decreases the size of a shape by expanding and contracting vertices. */
	public function scale(s:Single):Void;
	
	public function setKind(kind:Int):Void;
	
	public function setMode(mode:Int):Void;
	
	public function setName(name:String):Void;
	
	public function setParams(source:jvm.NativeArray<Single>):Void;
	
	/* ( begin auto-generated from PShape_setVisible.xml ) Sets the shape to be visible or invisible. */
	public function setVisible(visible:Bool):Void;
	
	public function solid(solid:Bool):Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single, alpha:Single):Void{})
	public function stroke(rgb:Int):Void;
	
	public function strokeCap(cap:Int):Void;
	
	public function strokeJoin(join:Int):Void;
	
	public function strokeWeight(weight:Single):Void;
	
	public function texture(tex:PImage):Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single, alpha:Single):Void{})
	public function tint(rgb:Int):Void;
	
	@:overload(function(tx:Single, ty:Single, tz:Single):Void{})
	/* ( begin auto-generated from PShape_translate.xml ) Specifies an amount to displace the shape. */
	public function translate(tx:Single, ty:Single):Void;
	
	public function updateRoot(root:PShape):Void;
	
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	@:overload(function(x:Single, y:Single, u:Single, v:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single, u:Single, v:Single):Void{})
	public function vertex(x:Single, y:Single):Void;
	
	
}