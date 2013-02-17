package processing.core;

#if !java private typedef Single = Float; #end

extern class PGraphics extends processing.core.PImage {

	static public var DEFAULT_VERTICES:Int;
	public var ambientB:Single;
	public var ambientColor:Int;
	public var ambientG:Single;
	public var ambientR:Single;
	/** Last background color that was set, zero if an image */
	public var backgroundColor:Int;
	//public var bezierDetail:Int;
	/** The current colorMode */
	//public var colorMode:Int;
	/** Max value for alpha set by colorMode */
	public var colorModeA:Single;
	/** Max value for red (or hue) set by colorMode */
	public var colorModeX:Single;
	/** Max value for green (or saturation) set by colorMode */
	public var colorModeY:Single;
	/** Max value for blue (or value) set by colorMode */
	public var colorModeZ:Single;
	//public var curveTightness:Single;
	//public var edge:Bool;
	/** The current ellipse mode (read-only) */
	//public var ellipseMode:Int;
	public var emissiveB:Single;
	public var emissiveColor:Int;
	public var emissiveG:Single;
	public var emissiveR:Single;
	/** true if fill() is enabled, (read-only) */
	//public var fill:Bool;
	/** fill that was last set (read-only) */
	public var fillColor:Int;
	/** Java AWT Image object associated with this renderer. */
	//public var image: java.awt.Image;
	/** The current image alignment (read-only) */
	//public var imageMode:Int;
	/** Current normal vector. */
	public var normalX:Single;
	/** Current normal vector. */
	public var normalY:Single;
	/** Current normal vector. */
	public var normalZ:Single;
	public var pixelCount:Int;
	/** The current rect mode (read-only) */
	//public var rectMode:Int;
	/** The current shape alignment mode (read-only) */
	//public var shapeMode:Int;
	//public var shininess:Single;
	//public var smooth:Bool;
	public var specularB:Single;
	public var specularColor:Int;
	public var specularG:Single;
	public var specularR:Single;
	public var sphereDetailU:Int;
	public var sphereDetailV:Int;
	/** true if stroke() is enabled, (read-only) */
	//public var stroke:Bool;
	/** Set by strokeCap() (read-only). */
	//public var strokeCap:Int;
	/** stroke that was last set (read-only) */
	public var strokeColor:Int;
	/** Set by strokeJoin() (read-only). */
	//public var strokeJoin:Int;
	/** Last value set by strokeWeight() (read-only). */
	//public var strokeWeight:Single;
	/** The current text align (read-only) */
	//public var textAlign:Int;
	/** The current vertical text alignment (read-only) */
	public var textAlignY:Int;
	/** The current text font (read-only) */
	//public var textFont: PFont;
	/** The current text leading (read-only) */
	//public var textLeading:Single;
	/** The current text mode (read-only) */
	//public var textMode:Int;
	/** The current text size (read-only) */
	//public var textSize:Single;
	/** Current image being used as a texture */
	public var textureImage: PImage;
	/** Sets whether texture coordinates passed to vertex() calls will be based on coordinates that are based on the IMAGE or NORMALIZED. */
	//public var textureMode:Int;
	/** Current horizontal coordinate for texture, will always be between 0 and 1, even if using textureMode(IMAGE). */
	public var textureU:Single;
	/** Current vertical coordinate for texture, see above. */
	public var textureV:Single;
	/** True if tint() is enabled (read-only). */
	//public var tint:Bool;
	/** tint that was last set (read-only) */
	public var tintColor:Int;

	/** Constructor for the PGraphics object. */
	public function new():Void;
	
	
	/** ( begin auto-generated from alpha.xml ) Extracts the alpha value from a color. */
	public function alpha(rgb:Int):Single;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	/** ( begin auto-generated from ambient.xml ) Sets the ambient reflectance for shapes drawn to the screen. */
	public function ambient(rgb:Int):Void;
	
	@:overload(function(red:Single, green:Single, blue:Single, x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from ambientLight.xml ) Adds an ambient light. */
	public function ambientLight(red:Single, green:Single, blue:Single):Void;
	
	@:overload(function(source:PMatrix2D):Void{})
	@:overload(function(source:PMatrix3D):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	/** ( begin auto-generated from applyMatrix.xml ) Multiplies the current matrix by the one specified through the parameters. */
	public function applyMatrix(source:PMatrix):Void;
	
	/** ( begin auto-generated from arc.xml ) Draws an arc in the display window. */
	public function arc(a:Single, b:Single, c:Single, d:Single, start:Single, stop:Single):Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(image:PImage):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, a:Single):Void{})
	/** ( begin auto-generated from background.xml ) The background() function sets the color used for the background of the Processing window. */
	public function background(rgb:Int):Void;
	
	/** ( begin auto-generated from beginCamera.xml ) The beginCamera() and endCamera() functions enable advanced customization of the camera space. */
	public function beginCamera():Void;
	
	public function beginContour():Void;
	
	/** ( begin auto-generated from PGraphics_beginDraw.xml ) Sets the default properties for a PGraphics object. */
	public function beginDraw():Void;
	
	/** Record individual lines and triangles by echoing them to another renderer. */
	public function beginRaw(rawGraphics:PGraphics):Void;
	
	/** ( begin auto-generated from beginShape.xml ) Using the beginShape() and endShape() functions allow creating more complex forms. */
	@:overload(function(kind:Int):Void{})
	/** Start a new shape of type POLYGON */
	public function beginShape():Void;
	
	/** ( begin auto-generated from bezier.xml ) Draws a Bezier curve on the screen. */
	@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single, x3:Single, y3:Single, z3:Single, x4:Single, y4:Single, z4:Single):Void{})
	public function bezier(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	/** ( begin auto-generated from bezierDetail.xml ) Sets the resolution at which Beziers display. */
	public function bezierDetail(detail:Int):Void;
	
	inline public function bezierDetailGet():Int {
		return untyped bezierDetail;
	}
	
	/** ( begin auto-generated from bezierPoint.xml ) Evaluates the Bezier at point t for points a, b, c, d. */
	public function bezierPoint(a:Single, b:Single, c:Single, d:Single, t:Single):Single;
	
	/** ( begin auto-generated from bezierTangent.xml ) Calculates the tangent of a point on a Bezier curve. */
	public function bezierTangent(a:Single, b:Single, c:Single, d:Single, t:Single):Single;
	
	/** ( begin auto-generated from bezierVertex.xml ) Specifies vertex coordinates for Bezier curves. */
	@:overload(function(x2:Single, y2:Single, z2:Single, x3:Single, y3:Single, z3:Single, x4:Single, y4:Single, z4:Single):Void{})
	public function bezierVertex(x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	public function blendMode(mode:Int):Void;
	
	/** ( begin auto-generated from blue.xml ) Extracts the blue value from a color, scaled to match current colorMode(). */
	public function blue(rgb:Int):Single;
	
	@:overload(function(w:Single, h:Single, d:Single):Void{})
	/** ( begin auto-generated from box.xml ) A box is an extruded rectangle. */
	public function box(size:Single):Void;
	
	/** ( begin auto-generated from brightness.xml ) Extracts the brightness value from a color. */
	public function brightness(rgb:Int):Single;
	
	@:overload(function(eyeX:Single, eyeY:Single, eyeZ:Single, centerX:Single, centerY:Single, centerZ:Single, upX:Single, upY:Single, upZ:Single):Void{})
	/** ( begin auto-generated from camera.xml ) Sets the position of the camera through setting the eye position, the center of the scene, and which axis is facing upward. */
	public function camera():Void;
	
	/** Some renderers have requirements re: when they are ready to draw. */
	public function canDraw():Bool;
	
	public function clip(a:Single, b:Single, c:Single, d:Single):Void;
	
	@:overload(function(gray:Single):Int{})
	@:overload(function(c:Int, alpha:Int):Int{})
	@:overload(function(c:Int, alpha:Single):Int{})
	@:overload(function(gray:Single, alpha:Single):Int{})
	@:overload(function(v1:Int, v2:Int, v3:Int):Int{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Int{})
	@:overload(function(v1:Int, v2:Int, v3:Int, a:Int):Int{})
	@:overload(function(v1:Single, v2:Single, v3:Single, a:Single):Int{})
	public function color(c:Int):Int;
	
	@:overload(function(mode:Int, max:Single):Void{})
	@:overload(function(mode:Int, max1:Single, max2:Single, max3:Single):Void{})
	@:overload(function(mode:Int, max1:Single, max2:Single, max3:Single, maxA:Single):Void{})
	/** ( begin auto-generated from colorMode.xml ) Changes the way Processing interprets color data. */
	public function colorMode(mode:Int):Void;
	
	inline public function colorModeGet():Int {
		return untyped colorMode;
	}
	
	@:overload(function(type:Int): PShape{})
	//@:overload(function(kind:Int, p: float...): PShape{})
	public function createShape(): PShape;
	
	@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single, x3:Single, y3:Single, z3:Single, x4:Single, y4:Single, z4:Single):Void{})
	/** ( begin auto-generated from curve.xml ) Draws a curved line on the screen. */
	public function curve(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	/** ( begin auto-generated from curveDetail.xml ) Sets the resolution at which curves display. */
	public function curveDetail(detail:Int):Void;
	
	/** ( begin auto-generated from curvePoint.xml ) Evalutes the curve at point t for points a, b, c, d. */
	public function curvePoint(a:Single, b:Single, c:Single, d:Single, t:Single):Single;
	
	/** ( begin auto-generated from curveTangent.xml ) Calculates the tangent of a point on a curve. */
	public function curveTangent(a:Single, b:Single, c:Single, d:Single, t:Single):Single;
	
	/** ( begin auto-generated from curveTightness.xml ) Modifies the quality of forms created with curve() and curveVertex(). */
	public function curveTightness(tightness:Single):Void;
	
	inline public function curveTightnessGet():Single {
		return untyped curveTightness;
	}
	
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from curveVertex.xml ) Specifies vertex coordinates for curves. */
	public function curveVertex(x:Single, y:Single):Void;
	
	/** ( begin auto-generated from directionalLight.xml ) Adds a directional light. */
	public function directionalLight(red:Single, green:Single, blue:Single, nx:Single, ny:Single, nz:Single):Void;
	
	/** Return true if this renderer should be drawn to the screen. */
	public function displayable():Bool;
	
	/** Handle any takedown for this graphics context. */
	public function dispose():Void;
	
	/** Sets whether the upcoming vertex is part of an edge. */
	public function edge(edge:Bool):Void;
	
	inline public function edgeGet():Bool {
		return untyped edge;
	}
	
	/** ( begin auto-generated from ellipse.xml ) Draws an ellipse (oval) in the display window. */
	public function ellipse(a:Single, b:Single, c:Single, d:Single):Void;
	
	/** ( begin auto-generated from ellipseMode.xml ) The origin of the ellipse is modified by the ellipseMode() function. */
	public function ellipseMode(mode:Int):Void;
	
	inline public function ellipseModeGet():Int {
		return untyped ellipseMode;
	}
	
	/** gray number specifying value between white and black */
	@:overload(function(gray:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	/** ( begin auto-generated from emissive.xml ) Sets the emissive color of the material used for drawing shapes drawn to the screen. */
	public function emissive(rgb:Int):Void;
	
	/** ( begin auto-generated from endCamera.xml ) The beginCamera() and endCamera() functions enable advanced customization of the camera space. */
	public function endCamera():Void;
	
	public function endContour():Void;
	
	/** ( begin auto-generated from PGraphics_endDraw.xml ) Finalizes the rendering of a PGraphics object so that it can be shown on screen. */
	public function endDraw():Void;
	
	public function endRaw():Void;
	
	/** ( begin auto-generated from endShape.xml ) The endShape() function is the companion to beginShape() and may only be called after beginShape(). */
	@:overload(function(mode:Int):Void{})
	public function endShape():Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, a:Single):Void{})
	/** ( begin auto-generated from fill.xml ) Sets the color used to fill shapes. */
	public function fill(rgb:Int):Void;
	
	inline public function fillGet():Int {
		return untyped fill;
	}
	
	public function flush():Void;
	
	/** ( begin auto-generated from frustum.xml ) Sets a perspective matrix defined through the parameters. */
	public function frustum(left:Single, right:Single, bottom:Single, top:Single, near:Single, far:Single):Void;
	
	/** Copy the current transformation matrix into the specified target. */
	@:overload(function(target:PMatrix2D): PMatrix2D{})
	/** Copy the current transformation matrix into the specified target. */
	@:overload(function(target:PMatrix3D): PMatrix3D{})
	public function getMatrix(): PMatrix;
	
	@:overload(function(s:PStyle): PStyle{})
	public function getStyle(): PStyle;
	
	/** ( begin auto-generated from green.xml ) Extracts the green value from a color, scaled to match current colorMode(). */
	public function green(rgb:Int):Single;
	
	/** ( begin auto-generated from hint.xml ) Set various hints and hacks for the renderer. */
	public function hint(which:Int):Void;
	
	public function hintEnabled(which:Int):Bool;
	
	/** ( begin auto-generated from hue.xml ) Extracts the hue value from a color. */
	public function hue(rgb:Int):Single;
	
	/** ( begin auto-generated from image.xml ) Displays images to the screen. */
	@:overload(function(img:PImage, a:Single, b:Single, c:Single, d:Single):Void{})
	/** Draw an image(), also specifying u/v coordinates. */
	@:overload(function(img:PImage, a:Single, b:Single, c:Single, d:Single, u1:Int, v1:Int, u2:Int, v2:Int):Void{})
	public function image(img:PImage, x:Single, y:Single):Void;
	
	/** ( begin auto-generated from imageMode.xml ) Modifies the location from which images draw. */
	public function imageMode(mode:Int):Void;
	
	inline public function imageModeGet():Int {
		return untyped imageMode;
	}
	
	/** Return true if this renderer supports 2D drawing. */
	public function is2D():Bool;
	
	/** Return true if this renderer supports 3D drawing. */
	public function is3D():Bool;
	
	/** Return true if this renderer does rendering through OpenGL. */
	public function isGL():Bool;
	
	@:overload(function(c1:Int, c2:Int, amt:Single, mode:Int):Int{})
	/** ( begin auto-generated from lerpColor.xml ) Calculates a color or colors between two color at a specific increment. */
	public function lerpColor(c1:Int, c2:Int, amt:Single):Int;
	
	/** ( begin auto-generated from lightFalloff.xml ) Sets the falloff rates for point lights, spot lights, and ambient lights. */
	public function lightFalloff(constant:Single, linear:Single, quadratic:Single):Void;
	
	/** ( begin auto-generated from lightSpecular.xml ) Sets the specular color for lights. */
	public function lightSpecular(v1:Single, v2:Single, v3:Single):Void;
	
	/** ( begin auto-generated from lights.xml ) Sets the default ambient light, directional light, falloff, and specular values. */
	public function lights():Void;
	
	@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single):Void{})
	/** ( begin auto-generated from line.xml ) Draws a line (a direct path between two points) to the screen. */
	public function line(x1:Single, y1:Single, x2:Single, y2:Single):Void;
	
	/** ( begin auto-generated from modelX.xml ) Returns the three-dimensional X, Y, Z position in model space. */
	public function modelX(x:Single, y:Single, z:Single):Single;
	
	/** ( begin auto-generated from modelY.xml ) Returns the three-dimensional X, Y, Z position in model space. */
	public function modelY(x:Single, y:Single, z:Single):Single;
	
	/** ( begin auto-generated from modelZ.xml ) Returns the three-dimensional X, Y, Z position in model space. */
	public function modelZ(x:Single, y:Single, z:Single):Single;
	
	public function noClip():Void;
	
	/** ( begin auto-generated from noFill.xml ) Disables filling geometry. */
	public function noFill():Void;
	
	/** ( begin auto-generated from noLights.xml ) Disable all lighting. */
	public function noLights():Void;
	
	/** ( begin auto-generated from noSmooth.xml ) Draws all geometry with jagged (aliased) edges. */
	public function noSmooth():Void;
	
	/** ( begin auto-generated from noStroke.xml ) Disables drawing the stroke (outline). */
	public function noStroke():Void;
	
	/** Removes texture image for current shape. */
	public function noTexture():Void;
	
	/** ( begin auto-generated from noTint.xml ) Removes the current fill value for displaying images and reverts to displaying images with their original hues. */
	public function noTint():Void;
	
	/** ( begin auto-generated from normal.xml ) Sets the current normal vector. */
	public function normal(nx:Single, ny:Single, nz:Single):Void;
	
	@:overload(function(left:Single, right:Single, bottom:Single, top:Single):Void{})
	@:overload(function(left:Single, right:Single, bottom:Single, top:Single, near:Single, far:Single):Void{})
	/** ( begin auto-generated from ortho.xml ) Sets an orthographic projection and defines a parallel clipping volume. */
	public function ortho():Void;
	
	@:overload(function(fovy:Single, aspect:Single, zNear:Single, zFar:Single):Void{})
	/** ( begin auto-generated from perspective.xml ) Sets a perspective projection applying foreshortening, making distant objects appear smaller than closer ones. */
	public function perspective():Void;
	
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from point.xml ) Draws a point, a coordinate in space at the dimension of one pixel. */
	public function point(x:Single, y:Single):Void;
	
	/** ( begin auto-generated from pointLight.xml ) Adds a point light. */
	public function pointLight(red:Single, green:Single, blue:Single, x:Single, y:Single, z:Single):Void;
	
	/** ( begin auto-generated from popMatrix.xml ) Pops the current transformation matrix off the matrix stack. */
	public function popMatrix():Void;
	
	/** ( begin auto-generated from popStyle.xml ) The pushStyle() function saves the current style settings and popStyle() restores the prior settings; these functions are always used together. */
	public function popStyle():Void;
	
	/** ( begin auto-generated from printCamera.xml ) Prints the current camera matrix to the Console (the text window at the bottom of Processing). */
	public function printCamera():Void;
	
	/** ( begin auto-generated from printMatrix.xml ) Prints the current matrix to the Console (the text window at the bottom of Processing). */
	public function printMatrix():Void;
	
	/** ( begin auto-generated from printProjection.xml ) Prints the current projection matrix to the Console (the text window at the bottom of Processing). */
	public function printProjection():Void;
	
	/** ( begin auto-generated from pushMatrix.xml ) Pushes the current transformation matrix onto the matrix stack. */
	public function pushMatrix():Void;
	
	/** ( begin auto-generated from pushStyle.xml ) The pushStyle() function saves the current style settings and popStyle() restores the prior settings. */
	public function pushStyle():Void;
	
	/** ( begin auto-generated from quad.xml ) A quad is a quadrilateral, a four sided polygon. */
	public function quad(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	@:overload(function(cx:Single, cy:Single, cz:Single, x3:Single, y3:Single, z3:Single):Void{})
	public function quadraticVertex(cx:Single, cy:Single, x3:Single, y3:Single):Void;
	
	@:overload(function(a:Single, b:Single, c:Single, d:Single, r:Single):Void{})
	@:overload(function(a:Single, b:Single, c:Single, d:Single, tl:Single, tr:Single, br:Single, bl:Single):Void{})
	/** ( begin auto-generated from rect.xml ) Draws a rectangle to the screen. */
	public function rect(a:Single, b:Single, c:Single, d:Single):Void;
	
	/** ( begin auto-generated from rectMode.xml ) Modifies the location from which rectangles draw. */
	public function rectMode(mode:Int):Void;
	
	inline public function rectModeGet():Int {
		return untyped rectMode;
	}
	
	/** ( begin auto-generated from red.xml ) Extracts the red value from a color, scaled to match current colorMode(). */
	public function red(rgb:Int):Single;
	
	/** Try to draw, or put a draw request on the queue. */
	public function requestDraw():Void;
	
	/** ( begin auto-generated from resetMatrix.xml ) Replaces the current matrix with the identity matrix. */
	public function resetMatrix():Void;
	
	/** Advanced */
	@:overload(function(angle:Single, vx:Single, vy:Single, vz:Single):Void{})
	/** ( begin auto-generated from rotate.xml ) Rotates a shape the amount specified by the angle parameter. */
	public function rotate(angle:Single):Void;
	
	/** ( begin auto-generated from rotateX.xml ) Rotates a shape around the x-axis the amount specified by the angle parameter. */
	public function rotateX(angle:Single):Void;
	
	/** ( begin auto-generated from rotateY.xml ) Rotates a shape around the y-axis the amount specified by the angle parameter. */
	public function rotateY(angle:Single):Void;
	
	/** ( begin auto-generated from rotateZ.xml ) Rotates a shape around the z-axis the amount specified by the angle parameter. */
	public function rotateZ(angle:Single):Void;
	
	/** ( begin auto-generated from saturation.xml ) Extracts the saturation value from a color. */
	public function saturation(rgb:Int):Single;
	
	/** Advanced */
	@:overload(function(x:Single, y:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from scale.xml ) Increases or decreases the size of a shape by expanding and contracting vertices. */
	public function scale(s:Single):Void;
	
	@:overload(function(x:Single, y:Single, z:Single):Single{})
	/** ( begin auto-generated from screenX.xml ) Takes a three-dimensional X, Y, Z position and returns the X value for where it will appear on a (two-dimensional) screen. */
	public function screenX(x:Single, y:Single):Single;
	
	@:overload(function(x:Single, y:Single, z:Single):Single{})
	/** ( begin auto-generated from screenY.xml ) Takes a three-dimensional X, Y, Z position and returns the Y value for where it will appear on a (two-dimensional) screen. */
	public function screenY(x:Single, y:Single):Single;
	
	/** ( begin auto-generated from screenZ.xml ) Takes a three-dimensional X, Y, Z position and returns the Z value for where it will appear on a (two-dimensional) screen. */
	public function screenZ(x:Single, y:Single, z:Single):Single;
	
	public function setAntiAlias(samples:Int):Void;
	
	public function setFrameRate(framerate:Single):Void;
	
	/** Set the current transformation to the contents of the specified source. */
	@:overload(function(source:PMatrix3D):Void{})
	/** Set the current transformation matrix to the contents of another. */
	@:overload(function(source:PMatrix):Void{})
	/** Set the current transformation to the contents of the specified source. */
	public function setMatrix(source:PMatrix2D):Void;
	
	public function setParent(parent:PApplet):Void;
	
	public function setPath(path:String):Void;
	
	/** Set (or unset) this as the main drawing surface. */
	public function setPrimary(primary:Bool):Void;
	
	/** The final step in setting up a renderer, set its size of this renderer. */
	public function setSize(w:Int, h:Int):Void;
	
	/** Convenience method to draw at a particular location. */
	@:overload(function(shape:PShape, x:Single, y:Single):Void{})
	/** ( begin auto-generated from shape.xml ) Displays shapes to the screen. */
	@:overload(function(shape:PShape, a:Single, b:Single, c:Single, d:Single):Void{})
	public function shape(shape:PShape):Void;
	
	/** ( begin auto-generated from shapeMode.xml ) Modifies the location from which shapes draw. */
	public function shapeMode(mode:Int):Void;
	
	inline public function shapeModeGet():Int {
		return untyped shapeMode;
	}
	
	/** ( begin auto-generated from shearX.xml ) Shears a shape around the x-axis the amount specified by the angle parameter. */
	public function shearX(angle:Single):Void;
	
	/** ( begin auto-generated from shearY.xml ) Shears a shape around the y-axis the amount specified by the angle parameter. */
	public function shearY(angle:Single):Void;
	
	/** ( begin auto-generated from shininess.xml ) Sets the amount of gloss in the surface of shapes. */
	public function shininess(shine:Single):Void;
	
	inline public function shininessGet():Single {
		return untyped shininess;
	}
	
	/** Display a warning that the specified method is only available with 3D. */
	static public function showDepthWarning(method:String):Void;
	
	/** Display a warning that the specified method that takes x, y, z parameters can only be used with x and y parameters in this renderer. */
	static public function showDepthWarningXYZ(method:String):Void;
	
	/** Show an renderer-related exception that halts the program. */
	static public function showException(msg:String):Void;
	
	/** Display a warning that the specified method is simply unavailable. */
	static public function showMethodWarning(method:String):Void;
	
	/** Display a warning that the specified method is not implemented, meaning that it could be either a completely missing function, although other variations of it may still work properly. */
	static public function showMissingWarning(method:String):Void;
	
	/** Error that a particular variation of a method is unavailable (even though other variations are). */
	static public function showVariationWarning(str:String):Void;
	
	/** Show a renderer error, and keep track of it so that it's only shown once. */
	static public function showWarning(msg:String):Void;
	
	@:overload(function(level:Int):Void{})
	/** ( begin auto-generated from smooth.xml ) Draws all geometry with smooth (anti-aliased) edges. */
	public function smooth():Void;
	
	inline public function smoothGet():Int {
		return untyped smooth;
	}
	
	/** gray number specifying value between white and black */
	@:overload(function(gray:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	/** ( begin auto-generated from specular.xml ) Sets the specular color of the materials used for shapes drawn to the screen, which sets the color of hightlights. */
	public function specular(rgb:Int):Void;
	
	/** ( begin auto-generated from sphere.xml ) A sphere is a hollow ball made from tessellated triangles. */
	public function sphere(r:Single):Void;
	
	@:overload(function(ures:Int, vres:Int):Void{})
	/** ( begin auto-generated from sphereDetail.xml ) Controls the detail used to render a sphere by adjusting the number of vertices of the sphere mesh. */
	public function sphereDetail(res:Int):Void;
	
	/** ( begin auto-generated from spotLight.xml ) Adds a spot light. */
	public function spotLight(red:Single, green:Single, blue:Single, x:Single, y:Single, z:Single, nx:Single, ny:Single, nz:Single, angle:Single, concentration:Single):Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, alpha:Single):Void{})
	/** ( begin auto-generated from stroke.xml ) Sets the color used to draw lines and borders around shapes. */
	public function stroke(rgb:Int):Void;
	
	inline public function strokeGet():Int {
		return untyped stroke;
	}
	
	/** ( begin auto-generated from strokeCap.xml ) Sets the style for rendering line endings. */
	public function strokeCap(cap:Int):Void;
	
	inline public function strokeCapGet():Int {
		return untyped strokeCap;
	}
	
	/** ( begin auto-generated from strokeJoin.xml ) Sets the style of the joints which connect line segments. */
	public function strokeJoin(join:Int):Void;
	
	inline public function strokeJoinGet():Int {
		return untyped strokeJoin;
	}
	
	/** ( begin auto-generated from strokeWeight.xml ) Sets the width of the stroke used for lines, points, and the border around shapes. */
	public function strokeWeight(weight:Single):Void;
	
	inline public function strokeWeightGet():Single {
		return untyped strokeWeight;
	}
	
	public function style(s:PStyle):Void;
	
	/** ( begin auto-generated from text.xml ) Draws text to the screen. */
	@:overload(function(c:Int, x:Single, y:Single):Void{})
	/** This does a basic number formatting, to avoid the generally ugly appearance of printing floats. */
	@:overload(function(num:Single, x:Single, y:Single):Void{})
	/** Advanced */
	@:overload(function(str:String, x:Single, y:Single):Void{})
	@:overload(function(c:Int, x:Single, y:Single, z:Single):Void{})
	@:overload(function(num:Int, x:Single, y:Single, z:Single):Void{})
	@:overload(function(num:Single, x:Single, y:Single, z:Single):Void{})
	/** Same as above but with a z coordinate. */
	@:overload(function(str:String, x:Single, y:Single, z:Single):Void{})
	/** Advanced */
	@:overload(function(str:String, x1:Single, y1:Single, x2:Single, y2:Single):Void{})
	/** Advanced */
	@:overload(function(chars:java.NativeArray<Int>, start:Int, stop:Int, x:Single, y:Single):Void{})
	@:overload(function(chars:java.NativeArray<Int>, start:Int, stop:Int, x:Single, y:Single, z:Single):Void{})
	public function text(num:Int, x:Single, y:Single):Void;
	
	/** ( begin auto-generated from textAlign.xml ) Sets the current alignment for drawing text. */
	@:overload(function(alignX:Int, alignY:Int):Void{})
	public function textAlign(align:Int):Void;
	
	inline public function textAlignGet():Int {
		return untyped textAlign;
	}
	
	/** ( begin auto-generated from textAscent.xml ) Returns ascent of the current font at its current size. */
	public function textAscent():Single;
	
	/** ( begin auto-generated from textDescent.xml ) Returns descent of the current font at its current size. */
	public function textDescent():Single;
	
	@:overload(function(which:PFont, size:Single):Void{})
	/** ( begin auto-generated from textFont.xml ) Sets the current font that will be drawn with the text() function. */
	public function textFont(which:PFont):Void;
	
	inline public function textFontGet():PFont {
		return untyped textFont;
	}
	
	/** ( begin auto-generated from textLeading.xml ) Sets the spacing between lines of text in units of pixels. */
	public function textLeading(leading:Single):Void;
	
	inline public function textLeadingGet():Single {
		return untyped textLeading;
	}
	
	/** ( begin auto-generated from textMode.xml ) Sets the way text draws to the screen. */
	public function textMode(mode:Int):Void;
	
	inline public function textModeGet():Int {
		return untyped textMode;
	}
	
	/** ( begin auto-generated from textSize.xml ) Sets the current font size. */
	public function textSize(size:Single):Void;
	
	inline public function textSizeGet():Single {
		return untyped textSize;
	}
	
	/** ( begin auto-generated from textWidth.xml ) Calculates and returns the width of any character or text string. */
	@:overload(function(str:String):Single{})
	@:overload(function(chars:java.NativeArray<Int>, start:Int, length:Int):Single{})
	public function textWidth(c:Int):Single;
	
	/** ( begin auto-generated from texture.xml ) Sets a texture to be applied to vertex points. */
	public function texture(image:PImage):Void;
	
	/** ( begin auto-generated from textureMode.xml ) Sets the coordinate space for texture mapping. */
	public function textureMode(mode:Int):Void;
	
	inline public function textureModeGet():Int {
		return untyped textureMode;
	}
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, a:Single):Void{})
	/** ( begin auto-generated from tint.xml ) Sets the fill value for displaying images. */
	public function tint(rgb:Int):Void;
	
	inline public function tintGet():Int {
		return untyped tint;
	}
	
	@:overload(function(tx:Single, ty:Single, tz:Single):Void{})
	/** ( begin auto-generated from translate.xml ) Specifies an amount to displace objects within the display window. */
	public function translate(tx:Single, ty:Single):Void;
	
	/** ( begin auto-generated from triangle.xml ) A triangle is a plane created by connecting three points. */
	public function triangle(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single):Void;
	
	@:overload(function(x:Single, y:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	@:overload(function(x:Single, y:Single, u:Single, v:Single):Void{})
	/** ( begin auto-generated from vertex.xml ) All shapes are constructed by connecting a series of vertices. */
	@:overload(function(x:Single, y:Single, z:Single, u:Single, v:Single):Void{})
	/** Used by renderer subclasses or PShape to efficiently pass in already formatted vertex information. */
	public function vertex(v:java.NativeArray<Single>):Void;
	
	
}