package processing.core;

#if !java private typedef Single = Float; #end

extern class PApplet implements PConstants {

	static public var ARGS_BGCOLOR:String;
	static public var ARGS_DISPLAY:String;
	/** Position of the upper-lefthand corner of the editor window that launched this applet. */
	static public var ARGS_EDITOR_LOCATION:String;
	/** Location for where to position the applet window on screen. */
	static public var ARGS_EXTERNAL:String;
	static public var ARGS_FULL_SCREEN:String;
	static public var ARGS_HIDE_STOP:String;
	static public var ARGS_LOCATION:String;
	/** Deprecated. use --full-screen instead. */
	static public var ARGS_PRESENT:String;
	/** Allows the user or PdeEditor to set a specific sketch folder path. */
	static public var ARGS_SKETCH_FOLDER:String;
	static public var ARGS_STOP_COLOR:String;
	static public var DEFAULT_HEIGHT:Int;
	/** Default width and height for applet when not specified */
	static public var DEFAULT_WIDTH:Int;
	/** When run externally to a PDE Editor, this is sent by the applet whenever the window is moved. */
	static public var EXTERNAL_MOVE:String;
	/** When run externally to a PdeEditor, this is sent by the applet when it quits. */
	static public var EXTERNAL_STOP:String;
	/** GIF image of the Processing logo. */
	static public var ICON_IMAGE:java.NativeArray<Int>;
	/** Modifier flags for the shortcut key used to trigger menus. */
	static public var MENU_SHORTCUT:Int;
	static public var MIN_WINDOW_HEIGHT:Int;
	/** Minimum dimensions for the window holding an applet. */
	static public var MIN_WINDOW_WIDTH:Int;
	/** Command line options passed in from main(). */
	public var args:java.NativeArray<String>;
	/** true if no size() command has been executed. */
	public var defaultSize:Bool;
	/** ( begin auto-generated from screenHeight.xml ) System variable that stores the height of the computer screen. */
	public var displayHeight:Int;
	/** ( begin auto-generated from screenWidth.xml ) System variable which stores the width of the computer screen. */
	public var displayWidth:Int;
	/** true if this applet has had it. */
	public var finished:Bool;
	/** Used to set pmouseX/Y to mouseX/Y the first time mouseX/Y are used, otherwise pmouseX/Y are always zero, causing a nasty jump. */
	public var firstMouse:Bool;
	/** ( begin auto-generated from focused.xml ) Confirms if a Processing program is "focused", meaning that it is active and will accept input from mouse or keyboard. */
	public var focused:Bool;
	/** The frame containing this applet (if any) */
	//public var frame: java.awt.Frame;
	/** ( begin auto-generated from frameCount.xml ) The system variable frameCount contains the number of frames displayed since the program started. */
	public var frameCount:Int;
	/** ( begin auto-generated from frameRate_var.xml ) The system variable frameRate contains the approximate frame rate of the software as it executes. */
	//public var frameRate:Single;
	/** The PGraphics renderer associated with this PApplet */
	public var g: PGraphics;
	/** ( begin auto-generated from height.xml ) System variable which stores the height of the display window. */
	public var height:Int;
	/** Version of Java that's in use, whether 1.1 or 1.3 or whatever, stored as a float. */
	static public var javaVersion:Single;
	/** Full name of the Java version (i.e. */
	static public var javaVersionName:String;
	/** ( begin auto-generated from key.xml ) The system variable key always contains the value of the most recent key on the keyboard that was used (either pressed or released). */
	public var key:Int;
	/** ( begin auto-generated from keyCode.xml ) The variable keyCode is used to detect special keys such as the UP, DOWN, LEFT, RIGHT arrow keys and ALT, CONTROL, SHIFT. */
	public var keyCode:Int;
	/** the last KeyEvent object passed into a mouse function. */
	//public var keyEvent: java.awt.event.KeyEvent;
	/** ( begin auto-generated from keyPressed_var.xml ) The boolean system variable keyPressed is true if any key is pressed and false if no keys are pressed. */
	//public var keyPressed:Bool;
	/** ( begin auto-generated from mouseButton.xml ) Processing automatically tracks if the mouse button is pressed and which button is pressed. */
	public var mouseButton:Int;
	//public var mouseEvent: java.awt.event.MouseEvent;
	/** ( begin auto-generated from mousePressed_var.xml ) Variable storing if a mouse button is pressed. */
	//public var mousePressed:Bool;
	/** ( begin auto-generated from mouseX.xml ) The system variable mouseX always contains the current horizontal coordinate of the mouse. */
	public var mouseX:Int;
	/** ( begin auto-generated from mouseY.xml ) The system variable mouseY always contains the current vertical coordinate of the mouse. */
	public var mouseY:Int;
	/** ( begin auto-generated from online.xml ) Confirms if a Processing program is running inside a web browser. */
	public var online:Bool;
	/** true if the animation thread is paused. */
	public var paused:Bool;
	/** ( begin auto-generated from pixels.xml ) Array containing the values for all the pixels in the display window. */
	public var pixels:java.NativeArray<Int>;
	/** Current platform in use, one of the PConstants WINDOWS, MACOSX, MACOS9, LINUX or OTHER. */
	static public var platform:Int;
	/** ( begin auto-generated from pmouseX.xml ) The system variable pmouseX always contains the horizontal position of the mouse in the frame previous to the current frame. You may find that pmouseX and pmouseY have different values inside draw() and inside events like mousePressed() and mouseMoved(). */
	public var pmouseX:Int;
	/** ( begin auto-generated from pmouseY.xml ) The system variable pmouseY always contains the vertical position of the mouse in the frame previous to the current frame. */
	public var pmouseY:Int;
	/** A leech graphics object that is echoing all events. */
	public var recorder: PGraphics;
	/** By trial and error, four image loading threads seem to work best when loading images from online. */
	public var requestImageMax:Int;
	//public var selectedFile: java.io.File;
	/** Path to sketch folder */
	//public var sketchPath:String;
	/** Setting for whether to use the Quartz renderer on OS X. */
	static public var useQuartz:Bool;
	/** ( begin auto-generated from width.xml ) System variable which stores the width of the display window. */
	public var width:Int;

	public function new():Void;
	
	
	/** ( begin auto-generated from abs.xml ) Calculates the absolute value (magnitude) of a number. */
	@:overload(function(n:Single):Single{})
	static public function abs(n:Int):Int;
	
	/** ( begin auto-generated from acos.xml ) The inverse of cos(), returns the arc cosine of a value. */
	static public function acos(value:Single):Single;
	
	//public function addListeners(comp:java.awt.Component):Void;
	
	/** ( begin auto-generated from alpha.xml ) Extracts the alpha value from a color. */
	public function alpha(rgb:Int):Single;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	/*** ( begin auto-generated from ambient.xml ) Sets the ambient reflectance for shapes drawn to the screen. */
	public function ambient(rgb:Int):Void;
	
	@:overload(function(red:Single, green:Single, blue:Single, x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from ambientLight.xml ) Adds an ambient light. */
	public function ambientLight(red:Single, green:Single, blue:Single):Void;
	
	@:overload(function(array:java.NativeArray<Int>, value:Int):java.NativeArray<Int>{})
	/*** ( begin auto-generated from append.xml ) Expands an array by one element and adds data to the new position. */
	@:overload(function(array:java.NativeArray<Int>, value:Int):java.NativeArray<Int>{})
	@:overload(function(array:java.NativeArray<Single>, value:Single):java.NativeArray<Single>{})
	@:overload(function(array:java.NativeArray<String>, value:String):java.NativeArray<String>{})
	@:overload(function(array:Dynamic, value:Dynamic):Dynamic{})
	static public function append(array:java.NativeArray<Int>, value:Int):java.NativeArray<Int>;
	
	@:overload(function(source:PMatrix3D):Void{})
	/** ( begin auto-generated from applyMatrix.xml ) Multiplies the current matrix by the one specified through the parameters. */
	@:overload(function(source:PMatrix):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n10:Single, n11:Single, n12:Single):Void{})
	@:overload(function(n00:Single, n01:Single, n02:Single, n03:Single, n10:Single, n11:Single, n12:Single, n13:Single, n20:Single, n21:Single, n22:Single, n23:Single, n30:Single, n31:Single, n32:Single, n33:Single):Void{})
	public function applyMatrix(source:PMatrix2D):Void;
	
	/** ( begin auto-generated from arc.xml ) Draws an arc in the display window. */
	public function arc(a:Single, b:Single, c:Single, d:Single, start:Single, stop:Single):Void;
	
	/** Convenience method for arraycopy(). */
	@:overload(function(src:Dynamic, dst:Dynamic, length:Int):Void{})
	/** ( begin auto-generated from arrayCopy.xml ) Copies an array (or part of an array) to another array. */
	@:overload(function(src:Dynamic, srcPosition:Int, dst:Dynamic, dstPosition:Int, length:Int):Void{})
	/** Shortcut to copy the entire contents of the source into the destination array. */
	static public function arrayCopy(src:Dynamic, dst:Dynamic):Void;
	
	/** Deprecated. Use arrayCopy() instead. */
	@:overload(function(src:Dynamic, dst:Dynamic, length:Int):Void{})
	/** Deprecated. Use arrayCopy() instead. */
	@:overload(function(src:Dynamic, srcPosition:Int, dst:Dynamic, dstPosition:Int, length:Int):Void{})
	/** Deprecated. Use arrayCopy() instead. */
	static public function arraycopy(src:Dynamic, dst:Dynamic):Void;
	
	/** ( begin auto-generated from asin.xml ) The inverse of sin(), returns the arc sine of a value. */
	static public function asin(value:Single):Single;
	
	/** ( begin auto-generated from atan.xml ) The inverse of tan(), returns the arc tangent of a value. */
	static public function atan(value:Single):Single;
	
	/** ( begin auto-generated from atan2.xml ) Calculates the angle (in radians) from a specified point to the coordinate origin as measured from the positive x-axis. */
	static public function atan2(y:Single, x:Single):Single;
	
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
	
	/** ( begin auto-generated from beginRaw.xml ) To create vectors from 3D data, use the beginRaw() and endRaw() commands. */
	@:overload(function(renderer:String, filename:String): PGraphics{})
	public function beginRaw(rawGraphics:PGraphics):Void;
	
	/** ( begin auto-generated from beginRecord.xml ) Opens a new file and all subsequent drawing functions are echoed to this file as well as the display window. */
	@:overload(function(renderer:String, filename:String): PGraphics{})
	public function beginRecord(recorder:PGraphics):Void;
	
	/** ( begin auto-generated from beginShape.xml ) Using the beginShape() and endShape() functions allow creating more complex forms. */
	@:overload(function(kind:Int):Void{})
	/** Start a new shape of type POLYGON */
	public function beginShape():Void;
	
	/** ( begin auto-generated from bezier.xml ) Draws a Bezier curve on the screen. */
	@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single, x3:Single, y3:Single, z3:Single, x4:Single, y4:Single, z4:Single):Void{})
	public function bezier(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	/** ( begin auto-generated from bezierDetail.xml ) Sets the resolution at which Beziers display. */
	public function bezierDetail(detail:Int):Void;
	
	/** ( begin auto-generated from bezierPoint.xml ) Evaluates the Bezier at point t for points a, b, c, d. */
	public function bezierPoint(a:Single, b:Single, c:Single, d:Single, t:Single):Single;
	
	/** ( begin auto-generated from bezierTangent.xml ) Calculates the tangent of a point on a Bezier curve. */
	public function bezierTangent(a:Single, b:Single, c:Single, d:Single, t:Single):Single;
	
	/** ( begin auto-generated from bezierVertex.xml ) Specifies vertex coordinates for Bezier curves. */
	@:overload(function(x2:Single, y2:Single, z2:Single, x3:Single, y3:Single, z3:Single, x4:Single, y4:Single, z4:Single):Void{})
	public function bezierVertex(x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	/** Returns a String that contains the binary value of a byte. */
	@:overload(function(value:Int):String{})
	/** Returns a String that contains the binary value of an int. */
	@:overload(function(value:Int):String{})
	/** ( begin auto-generated from binary.xml ) Converts a byte, char, int, or color to a String containing the equivalent binary notation. */
	@:overload(function(value:Int, digits:Int):String{})
	/** Returns a String that contains the binary value of a char. */
	static public function binary(value:Int):String;
	
	/** ( begin auto-generated from PImage_blend.xml ) Blends a region of pixels into the image specified by the img parameter. */
	@:overload(function(src:PImage, sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int, mode:Int):Void{})
	public function blend(sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int, mode:Int):Void;
	
	/** ( begin auto-generated from blendColor.xml ) Blends two color values together based on the blending mode given as the MODE parameter. */
	static public function blendColor(c1:Int, c2:Int, mode:Int):Int;
	
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
	
	/** ( begin auto-generated from ceil.xml ) Calculates the closest int value that is greater than or equal to the value of the parameter. */
	static public function ceil(n:Single):Int;
	
	public function clip(a:Single, b:Single, c:Single, d:Single):Void;
	
	@:overload(function(fgray:Single):Int{})
	/** As of 0116 this also takes color(#FF8800, alpha) */
	@:overload(function(gray:Int, alpha:Int):Int{})
	@:overload(function(fgray:Single, falpha:Single):Int{})
	@:overload(function(x:Int, y:Int, z:Int):Int{})
	@:overload(function(x:Single, y:Single, z:Single):Int{})
	@:overload(function(x:Int, y:Int, z:Int, a:Int):Int{})
	@:overload(function(x:Single, y:Single, z:Single, a:Single):Int{})
	/** ( begin auto-generated from color.xml ) Creates colors for storing in variables of the color datatype. */
	public function color(gray:Int):Int;
	
	@:overload(function(mode:Int, max:Single):Void{})
	@:overload(function(mode:Int, max1:Single, max2:Single, max3:Single):Void{})
	@:overload(function(mode:Int, max1:Single, max2:Single, max3:Single, maxA:Single):Void{})
	/** ( begin auto-generated from colorMode.xml ) Changes the way Processing interprets color data. */
	public function colorMode(mode:Int):Void;
	
	@:overload(function(a:java.NativeArray<Int>, b:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(a:java.NativeArray<Int>, b:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(a:java.NativeArray<Int>, b:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(a:java.NativeArray<Single>, b:java.NativeArray<Single>):java.NativeArray<Single>{})
	@:overload(function(a:java.NativeArray<String>, b:java.NativeArray<String>):java.NativeArray<String>{})
	@:overload(function(a:Dynamic, b:Dynamic):Dynamic{})
	/** ( begin auto-generated from concat.xml ) Concatenates two arrays. */
	static public function concat(a:java.NativeArray<Bool>, b:java.NativeArray<Bool>):java.NativeArray<Bool>;
	
	/** ( begin auto-generated from constrain.xml ) Constrains a value to not exceed a maximum and minimum value. */
	@:overload(function(amt:Single, low:Single, high:Single):Single{})
	/** Find the minimum value in an array. */
	static public function constrain(amt:Int, low:Int, high:Int):Int;
	
	@:overload(function(src:PImage, sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int):Void{})
	/** ( begin auto-generated from PImage_copy.xml ) Copies a region of pixels from one image into another. */
	public function copy(sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int):Void;
	
	/** ( begin auto-generated from cos.xml ) Calculates the cosine of an angle. */
	static public function cos(angle:Single):Single;
	
	@:overload(function(name:String, size:Single, smooth:Bool): PFont{})
	/** ( begin auto-generated from createFont.xml ) Dynamically converts a font to the format used by Processing from either a font name that's installed on the computer, or from a .ttf or .otf file inside the sketches "data" folder. */
	@:overload(function(name:String, size:Single, smooth:Bool, charset:java.NativeArray<Int>): PFont{})
	public function createFont(name:String, size:Single): PFont;
	
	/** ( begin auto-generated from createGraphics.xml ) Creates and returns a new PGraphics object of the types P2D or P3D. */
	@:overload(function(w:Int, h:Int, renderer:String): PGraphics{})
	/** Create an offscreen graphics surface for drawing, in this case for a renderer that writes to a file (such as PDF or DXF). */
	@:overload(function(w:Int, h:Int, renderer:String, path:String): PGraphics{})
	public function createGraphics(w:Int, h:Int): PGraphics;
	
	@:overload(function(w:Int, h:Int, format:Int, params:Dynamic): PImage{})
	/** ( begin auto-generated from createImage.xml ) Creates a new PImage (the datatype for storing images). */
	public function createImage(w:Int, h:Int, format:Int): PImage;
	
	@:overload(function(file:java.io.File):java.io.InputStream{})
	/** ( begin auto-generated from createInput.xml ) This is a function for advanced programmers to open a Java InputStream. */
	//public function createInput(filename:String): java.io.InputStream;
	
	/** Call openStream() without automatic gzip decompression. */
	//public function createInputRaw(filename:String): java.io.InputStream;
	
	//@:overload(function(file:java.io.File):java.io.OutputStream{})
	/** ( begin auto-generated from createOutput.xml ) Similar to createInput(), this creates a Java OutputStream for a given filename or path. */
	//public function createOutput(filename:String): java.io.OutputStream;
	
	@:overload(function(file:java.io.File):Void{})
	/** Takes a path and creates any in-between folders if they don't already exist. */
	static public function createPath(path:String):Void;
	
	//@:overload(function(input:java.io.InputStream):java.io.BufferedReader{})
	//@:overload(function(file:java.io.File):java.io.BufferedReader{})
	/** ( begin auto-generated from createReader.xml ) Creates a BufferedReader object that can be used to read files line-by-line as individual String objects. */
	//public function createReader(filename:String): java.io.BufferedReader;
	
	@:overload(function(type:Int): PShape{})
	//@:overload(function(kind:Int, p: float...): PShape{})
	public function createShape(): PShape;
	
	//@:overload(function(file:java.io.File):java.io.PrintWriter{})
	//@:overload(function(output:java.io.OutputStream):java.io.PrintWriter{})
	/** ( begin auto-generated from createWriter.xml ) Creates a new file in the sketch folder, and a PrintWriter object to write to it. */
	//public function createWriter(filename:String): java.io.PrintWriter;
	
	/** Set the cursor type */
	@:overload(function(kind:Int):Void{})
	/** Replace the cursor with the specified PImage. */
	@:overload(function(img:PImage):Void{})
	/** ( begin auto-generated from cursor.xml ) Sets the cursor to a predefined symbol, an image, or makes it visible if already hidden. */
	@:overload(function(img:PImage, x:Int, y:Int):Void{})
	/** Show the cursor after noCursor() was called. */
	public function cursor():Void;
	
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
	
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from curveVertex.xml ) Specifies vertex coordinates for curves. */
	public function curveVertex(x:Single, y:Single):Void;
	
	/** Return a full path to an item in the data folder as a File object. */
	//public function dataFile(where:String): java.io.File;
	
	/** Return a full path to an item in the data folder. */
	public function dataPath(where:String):String;
	
	/** ( begin auto-generated from day.xml ) Processing communicates with the clock on your computer. */
	static public function day():Int;
	
	/** ( begin auto-generated from degrees.xml ) Converts a radian measurement to its corresponding value in degrees. */
	static public function degrees(radians:Single):Single;
	
	/** The delay() function causes the program to halt for a specified time. */
	public function delay(napTime:Int):Void;
	
	public function delete():Void;
	
	/** Called by the browser or applet viewer to inform this applet that it is being reclaimed and that it should destroy any resources that it has allocated. */
	public function destroy():Void;
	
	/** Function for an applet/application to kill itself and display an error. */
	public function die(what:String):Void;
	
	/** ( begin auto-generated from directionalLight.xml ) Adds a directional light. */
	public function directionalLight(red:Single, green:Single, blue:Single, nx:Single, ny:Single, nz:Single):Void;
	
	/** Return true if this renderer should be drawn to the screen. */
	public function displayable():Bool;
	
	/** Called to dispose of resources and shut down the sketch. */
	public function dispose():Void;
	
	/** ( begin auto-generated from dist.xml ) Calculates the distance between two points. */
	@:overload(function(x1:Single, y1:Single, z1:Single, x2:Single, y2:Single, z2:Single):Single{})
	static public function dist(x1:Single, y1:Single, x2:Single, y2:Single):Single;
	
	/** ( begin auto-generated from draw.xml ) Called directly after setup() and continuously executes the lines of code contained inside its block until the program is stopped or noLoop() is called. */
	public function draw():Void;
	
	/** Sets whether the upcoming vertex is part of an edge. */
	public function edge(edge:Bool):Void;
	
	/** ( begin auto-generated from ellipse.xml ) Draws an ellipse (oval) in the display window. */
	public function ellipse(a:Single, b:Single, c:Single, d:Single):Void;
	
	/** ( begin auto-generated from ellipseMode.xml ) The origin of the ellipse is modified by the ellipseMode() function. */
	public function ellipseMode(mode:Int):Void;
	
	/** gray number specifying value between white and black */
	@:overload(function(gray:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	/** ( begin auto-generated from emissive.xml ) Sets the emissive color of the material used for drawing shapes drawn to the screen. */
	public function emissive(rgb:Int):Void;
	
	/** ( begin auto-generated from endCamera.xml ) The beginCamera() and endCamera() functions enable advanced customization of the camera space. */
	public function endCamera():Void;
	
	public function endContour():Void;
	
	/** ( begin auto-generated from endRaw.xml ) Complement to beginRaw(); they must always be used together. */
	public function endRaw():Void;
	
	/** ( begin auto-generated from endRecord.xml ) Stops the recording process started by beginRecord() and closes the file. */
	public function endRecord():Void;
	
	/** ( begin auto-generated from endShape.xml ) The endShape() function is the companion to beginShape() and may only be called after beginShape(). */
	@:overload(function(mode:Int):Void{})
	public function endShape():Void;
	
	//static public function exec(argv:java.NativeArray<String>):java.lang.Process;
	
	/** ( begin auto-generated from exit.xml ) Quits/stops/exits the program. */
	public function exit():Void;
	
	/** ( begin auto-generated from exp.xml ) Returns Euler's number e (2.71828...) raised to the power of the value parameter. */
	static public function exp(n:Single):Single;
	
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<Float>):java.NativeArray<Float>{})
	@:overload(function(list:java.NativeArray<String>):java.NativeArray<String>{})
	@:overload(function(array:Dynamic):Dynamic{})
	@:overload(function(list:java.NativeArray<Bool>, newSize:Int):java.NativeArray<Bool>{})
	@:overload(function(list:java.NativeArray<Int>, newSize:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, newSize:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, newSize:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, newSize:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>, newSize:Int):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<Float>, newSize:Int):java.NativeArray<Float>{})
	@:overload(function(list:java.NativeArray<String>, newSize:Int):java.NativeArray<String>{})
	@:overload(function(list:Dynamic, newSize:Int):Dynamic{})
	/** ( begin auto-generated from expand.xml ) Increases the size of an array. */
	static public function expand(list:java.NativeArray<Bool>):java.NativeArray<Bool>;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, a:Single):Void{})
	/** ( begin auto-generated from fill.xml ) Sets the color used to fill shapes. */
	public function fill(rgb:Int):Void;
	
	/** ( begin auto-generated from PImage_filter.xml ) Filters an image as defined by one of the following modes:THRESHOLD - converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. */
	@:overload(function(kind:Int, param:Single):Void{})
	public function filter(kind:Int):Void;
	
	/** ( begin auto-generated from floor.xml ) Calculates the closest int value that is less than or equal to the value of the parameter. */
	static public function floor(n:Single):Int;
	
	public function flush():Void;

	public function focusGained():Void;
	
	public function focusLost():Void;
	
	/** ( begin auto-generated from frameRate.xml ) Specifies the number of frames to be displayed every second. */
	public function frameRate(fps:Single):Void;
	
	inline public function frameRateGet():Single {
		return untyped frameRate;
	}
	
	/** ( begin auto-generated from frustum.xml ) Sets a perspective matrix defined through the parameters. */
	public function frustum(left:Single, right:Single, bottom:Single, top:Single, near:Single, far:Single):Void;
	
	/** ( begin auto-generated from PImage_get.xml ) Reads the color of any pixel or grabs a section of an image. */
	@:overload(function(x:Int, y:Int):Int{})
	@:overload(function(x:Int, y:Int, w:Int, h:Int): PImage{})
	/** Returns a copy of this PImage. */
	public function get(): PImage;
	
	/** Get cache storage data for the specified renderer. */
	public function getCache(renderer:PGraphics):Dynamic;
	
	/** Copy the current transformation matrix into the specified target. */
	@:overload(function(target:PMatrix3D): PMatrix3D{})
	/** Copy the current transformation matrix into the specified target. */
	@:overload(function(target:PMatrix2D): PMatrix2D{})
	public function getMatrix(): PMatrix;
	
	/** Get the parameters for the specified renderer. */
	public function getParams(renderer:PGraphics):Dynamic;
	
	/** ( begin auto-generated from green.xml ) Extracts the green value from a color, scaled to match current colorMode(). */
	public function green(rgb:Int):Single;
	
	public function handleDraw():Void;
	
	/** ( begin auto-generated from hex.xml ) Converts a byte, char, int, or color to a String containing the equivalent hexadecimal notation. */
	@:overload(function(value:Int):String{})
	@:overload(function(value:Int):String{})
	@:overload(function(value:Int, digits:Int):String{})
	static public function hex(value:Int):String;
	
	/** ( begin auto-generated from hint.xml ) Set various hints and hacks for the renderer. */
	public function hint(which:Int):Void;
	
	public function hintEnabled(which:Int):Bool;
	
	/** ( begin auto-generated from hour.xml ) Processing communicates with the clock on your computer. */
	static public function hour():Int;
	
	/** ( begin auto-generated from hue.xml ) Extracts the hue value from a color. */
	public function hue(rgb:Int):Single;
	
	/** ( begin auto-generated from image.xml ) Displays images to the screen. */
	@:overload(function(img:PImage, a:Single, b:Single, c:Single, d:Single):Void{})
	/** Draw an image(), also specifying u/v coordinates. */
	@:overload(function(img:PImage, a:Single, b:Single, c:Single, d:Single, u1:Int, v1:Int, u2:Int, v2:Int):Void{})
	public function image(img:PImage, x:Single, y:Single):Void;
	
	/** ( begin auto-generated from imageMode.xml ) Modifies the location from which images draw. */
	public function imageMode(mode:Int):Void;
	
	public function init():Void;
	
	/** Return true if this renderer does rendering through OpenGL. */
	public function isGL():Bool;
	
	@:overload(function(list:java.NativeArray<String>, separator:String):String{})
	/** ( begin auto-generated from join.xml ) Combines an array of Strings into one String, each separated by the character(s) used for the separator parameter. */
	static public function join(list:java.NativeArray<String>, separator:Int):String;
	
	/** ( begin auto-generated from keyPressed.xml ) The keyPressed() function is called once every time a key is pressed. */
	public function keyPressed():Void;
	
	inline public function keyPressedGet():Bool {
		return untyped keyPressed;
	}
	
	/** ( begin auto-generated from keyReleased.xml ) The keyReleased() function is called once every time a key is released. */
	public function keyReleased():Void;
	
	/** ( begin auto-generated from keyTyped.xml ) The keyTyped() function is called once every time a key is pressed, but action keys such as Ctrl, Shift, and Alt are ignored. */
	public function keyTyped():Void;
	
	/** ( begin auto-generated from lerp.xml ) Calculates a number between two numbers at a specific increment. */
	static public function lerp(start:Single, stop:Single, amt:Single):Single;
	
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
	
	/** ( begin auto-generated from link.xml ) Links to a webpage either in the same window or in a new window. */
	@:overload(function(url:String, target:String):Void{})
	public function link(here:String):Void;
	
	@:overload(function(input:java.io.InputStream):java.NativeArray<Int>{})
	@:overload(function(file:java.io.File):java.NativeArray<Int>{})
	/** ( begin auto-generated from loadBytes.xml ) Reads the contents of a file or url and places it in a byte array. */
	public function loadBytes(filename:String):java.NativeArray<Int>;
	
	/** ( begin auto-generated from loadFont.xml ) Loads a font into a variable of type PFont. */
	public function loadFont(filename:String): PFont;
	
	@:overload(function(filename:String, extension:String): PImage{})
	@:overload(function(filename:String, params:Dynamic): PImage{})
	@:overload(function(filename:String, extension:String, params:Dynamic): PImage{})
	/** ( begin auto-generated from loadImage.xml ) Loads an image into a variable of type PImage. */
	public function loadImage(filename:String): PImage;
	
	/** ( begin auto-generated from loadPixels.xml ) Loads the pixel data for the display window into the pixels[] array. */
	public function loadPixels():Void;
	
	@:overload(function(filename:String, params:Dynamic): PShape{})
	/** ( begin auto-generated from loadShape.xml ) Loads vector shapes into a variable of type PShape. */
	public function loadShape(filename:String): PShape;
	
	@:overload(function(input:java.io.InputStream):java.NativeArray<String>{})
	@:overload(function(file:java.io.File):java.NativeArray<String>{})
	/** ( begin auto-generated from loadStrings.xml ) Reads the contents of a file or url and creates a String array of its individual lines. */
	public function loadStrings(filename:String):java.NativeArray<String>;
	
	//public function loadTable(filename:String): Table;
	
	/** Creates an empty shape, with the specified size and parameters. */
	//public function loadXML(filename:String): XML;
	
	/** ( begin auto-generated from log.xml ) Calculates the natural logarithm (the base-e logarithm) of a number. */
	static public function log(n:Single):Single;
	
	/** ( begin auto-generated from loop.xml ) Causes Processing to continuously execute the code within draw(). */
	public function loop():Void;
	
	/** ( begin auto-generated from mag.xml ) Calculates the magnitude (or length) of a vector. */
	@:overload(function(a:Single, b:Single, c:Single):Single{})
	static public function mag(a:Single, b:Single):Single;
	
	static public function main(args:java.NativeArray<String>):Void;
	
	/** ( begin auto-generated from map.xml ) Re-maps a number from one range to another. */
	static public function map(value:Single, istart:Single, istop:Single, ostart:Single, ostop:Single):Single;
	
	@:overload(function(img:PImage):Void{})
	/** ( begin auto-generated from PImage_mask.xml ) Masks part of an image from displaying by loading another image and using it as an alpha channel. */
	public function mask(maskArray:java.NativeArray<Int>):Void;
	
	/** ( begin auto-generated from match.xml ) The match() function is used to apply a regular expression to a piece of text, and return matching groups (elements found inside parentheses) as a String array. */
	static public function match(str:String, regexp:String):java.NativeArray<String>;
	
	/** ( begin auto-generated from matchAll.xml ) This function is used to apply a regular expression to a piece of text, and return a list of matching groups (elements found inside parentheses) as a two-dimensional String array. */
	static public function matchAll(what:String, regexp:String):java.NativeArray<java.NativeArray<String>>;
	
	@:overload(function(list:java.NativeArray<Single>):Single{})
	/** ( begin auto-generated from max.xml ) Determines the largest value in a sequence of numbers. */
	@:overload(function(a:Int, b:Int):Int{})
	@:overload(function(a:Single, b:Single):Single{})
	@:overload(function(a:Int, b:Int, c:Int):Int{})
	@:overload(function(a:Single, b:Single, c:Single):Single{})
	static public function max(list:java.NativeArray<Int>):Int;
	
	/** Call a method in the current class based on its name. */
	public function method(name:String):Void;
	
	/** ( begin auto-generated from millis.xml ) Returns the number of milliseconds (thousandths of a second) since starting an applet. */
	public function millis():Int;
	
	@:overload(function(list:java.NativeArray<Single>):Single{})
	/** Find the maximum value in an array. */
	@:overload(function(a:Int, b:Int):Int{})
	@:overload(function(a:Single, b:Single):Single{})
	@:overload(function(a:Int, b:Int, c:Int):Int{})
	/** ( begin auto-generated from min.xml ) Determines the smallest value in a sequence of numbers. */
	@:overload(function(a:Single, b:Single, c:Single):Single{})
	static public function min(list:java.NativeArray<Int>):Int;
	
	/** ( begin auto-generated from minute.xml ) Processing communicates with the clock on your computer. */
	static public function minute():Int;
	
	/** ( begin auto-generated from modelX.xml ) Returns the three-dimensional X, Y, Z position in model space. */
	public function modelX(x:Single, y:Single, z:Single):Single;
	
	/** ( begin auto-generated from modelY.xml ) Returns the three-dimensional X, Y, Z position in model space. */
	public function modelY(x:Single, y:Single, z:Single):Single;
	
	/** ( begin auto-generated from modelZ.xml ) Returns the three-dimensional X, Y, Z position in model space. */
	public function modelZ(x:Single, y:Single, z:Single):Single;
	
	/** ( begin auto-generated from month.xml ) Processing communicates with the clock on your computer. */
	static public function month():Int;
	
	/** ( begin auto-generated from mouseClicked.xml ) The mouseClicked() function is called once after a mouse button has been pressed and then released. */
	public function mouseClicked():Void;
	
	/** ( begin auto-generated from mouseDragged.xml ) The mouseDragged() function is called once every time the mouse moves and a mouse button is pressed. */
	public function mouseDragged():Void;
	
	//public function mouseEntered(e:java.awt.event.MouseEvent):Void;
	
	//public function mouseExited(e:java.awt.event.MouseEvent):Void;
	
	/** ( begin auto-generated from mouseMoved.xml ) The mouseMoved() function is called every time the mouse moves and a mouse button is not pressed. */
	public function mouseMoved():Void;
	
	/** ( begin auto-generated from mousePressed.xml ) The mousePressed() function is called once after every time a mouse button is pressed. */
	public function mousePressed():Void;
	
	inline public function mousePressedGet():Bool {
		return untyped mousePressed;
	}
	
	/** ( begin auto-generated from mouseReleased.xml ) The mouseReleased() function is called every time a mouse button is released. */
	public function mouseReleased():Void;
	
	@:overload(function(num:java.NativeArray<Int>, digits:Int):java.NativeArray<String>{})
	@:overload(function(num:Single, left:Int, right:Int):String{})
	@:overload(function(num:java.NativeArray<Single>, left:Int, right:Int):java.NativeArray<String>{})
	/** ( begin auto-generated from nf.xml ) Utility function for formatting numbers into strings. */
	static public function nf(num:Int, digits:Int):String;
	
	/** ( begin auto-generated from nfc.xml ) Utility function for formatting numbers into strings and placing appropriate commas to mark units of 1000. */
	@:overload(function(num:java.NativeArray<Int>):java.NativeArray<String>{})
	@:overload(function(num:Single, right:Int):String{})
	@:overload(function(num:java.NativeArray<Single>, right:Int):java.NativeArray<String>{})
	/** nfc() or "number format with commas". */
	static public function nfc(num:Int):String;
	
	@:overload(function(num:java.NativeArray<Int>, digits:Int):java.NativeArray<String>{})
	@:overload(function(num:Single, left:Int, right:Int):String{})
	@:overload(function(num:java.NativeArray<Single>, left:Int, right:Int):java.NativeArray<String>{})
	/** ( begin auto-generated from nfp.xml ) Utility function for formatting numbers into strings. */
	static public function nfp(num:Int, digits:Int):String;
	
	@:overload(function(num:java.NativeArray<Int>, digits:Int):java.NativeArray<String>{})
	@:overload(function(num:Single, left:Int, right:Int):String{})
	@:overload(function(num:java.NativeArray<Single>, left:Int, right:Int):java.NativeArray<String>{})
	/** ( begin auto-generated from nfs.xml ) Utility function for formatting numbers into strings. */
	static public function nfs(num:Int, digits:Int):String;
	
	public function noClip():Void;
	
	/** ( begin auto-generated from noCursor.xml ) Hides the cursor from view. */
	public function noCursor():Void;
	
	/** ( begin auto-generated from noFill.xml ) Disables filling geometry. */
	public function noFill():Void;
	
	/** ( begin auto-generated from noLights.xml ) Disable all lighting. */
	public function noLights():Void;
	
	/** ( begin auto-generated from noLoop.xml ) Stops Processing from continuously executing the code within draw(). */
	public function noLoop():Void;
	
	/** ( begin auto-generated from noSmooth.xml ) Draws all geometry with jagged (aliased) edges. */
	public function noSmooth():Void;
	
	/** ( begin auto-generated from noStroke.xml ) Disables drawing the stroke (outline). */
	public function noStroke():Void;
	
	/** Removes texture image for current shape. */
	public function noTexture():Void;
	
	/** ( begin auto-generated from noTint.xml ) Removes the current fill value for displaying images and reverts to displaying images with their original hues. */
	public function noTint():Void;
	
	@:overload(function(x:Single, y:Single):Single{})
	/** ( begin auto-generated from noise.xml ) Returns the Perlin noise value at specified coordinates. */
	@:overload(function(x:Single, y:Single, z:Single):Single{})
	public function noise(x:Single):Single;
	
	@:overload(function(lod:Int, falloff:Single):Void{})
	/** ( begin auto-generated from noiseDetail.xml ) Adjusts the character and level of detail produced by the Perlin noise function. */
	public function noiseDetail(lod:Int):Void;
	
	/** ( begin auto-generated from noiseSeed.xml ) Sets the seed value for noise(). */
	public function noiseSeed(seed:Int):Void;
	
	/** ( begin auto-generated from norm.xml ) Normalizes a number from another range into a value between 0 and 1. */
	static public function norm(value:Single, start:Single, stop:Single):Single;
	
	/** ( begin auto-generated from normal.xml ) Sets the current normal vector. */
	public function normal(nx:Single, ny:Single, nz:Single):Void;
	
	/** Launch a process using a platforms shell. */
	@:overload(function(argv:java.NativeArray<String>):java.lang.Process{})
	/** ( begin auto-generated from open.xml ) Attempts to open an application or file using your platform's launcher. */
	static public function open(filename:String):Void;
	
	/** Deprecated. As of release 0136, use createInput() instead. */
	//public function openStream(filename:String): java.io.InputStream;
	
	public function orientation(which:Int):Void;
	
	@:overload(function(left:Single, right:Single, bottom:Single, top:Single):Void{})
	@:overload(function(left:Single, right:Single, bottom:Single, top:Single, near:Single, far:Single):Void{})
	/** ( begin auto-generated from ortho.xml ) Sets an orthographic projection and defines a parallel clipping volume. */
	public function ortho():Void;
	
	//public function paint(screen:java.awt.Graphics):Void;
	
	/** ( begin auto-generated from param.xml ) Reads the value of a param. */
	public function param(name:String):String;
	
	/** Convert the string "true" or "false" to a boolean. */
	@:overload(function(what:String):Bool{})
	/** Convert an int array to a boolean array. */
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Bool>{})
	@:overload(function(what:java.NativeArray<String>):java.NativeArray<Bool>{})
	/** Convert an integer to a boolean. */
	static public function parseBoolean(what:Int):Bool;
	
	@:overload(function(what:Int):Int{})
	@:overload(function(what:Int):Int{})
	@:overload(function(what:Single):Int{})
	@:overload(function(what:java.NativeArray<Bool>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Single>{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Single>):java.NativeArray<Int>{})
	static public function parseByte(what:Bool):Int;
	
	@:overload(function(what:Int):Int{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Int>{})
	static public function parseChar(what:Int):Int;
	
	@:overload(function(what:String):Single{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Single>{})
	@:overload(function(what:java.NativeArray<String>):java.NativeArray<Single>{})
	@:overload(function(what:String, otherwise:Single):Single{})
	@:overload(function(what:java.NativeArray<String>, missing:Single):java.NativeArray<Single>{})
	/** Convert an int to a float value. */
	static public function parseFloat(what:Int):Single;
	
	/** Note that parseInt() will un-sign a signed byte value. */
	@:overload(function(what:Int):Int{})
	/** Note that parseInt('5') is unlike String in the sense that it won't return 5, but the ascii value. */
	@:overload(function(what:Int):Int{})
	/** Same as floor(), or an (int) cast. */
	@:overload(function(what:Single):Int{})
	/** Parse a String into an int value. */
	@:overload(function(what:String):Int{})
	@:overload(function(what:java.NativeArray<Bool>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(what:java.NativeArray<Single>):java.NativeArray<Int>{})
	/** Make an array of int elements from an array of String objects. */
	@:overload(function(what:java.NativeArray<String>):java.NativeArray<Int>{})
	/** Parse a String to an int, and provide an alternate value that should be used when the number is invalid. */
	@:overload(function(what:String, otherwise:Int):Int{})
	/** Make an array of int elements from an array of String objects. */
	@:overload(function(what:java.NativeArray<String>, missing:Int):java.NativeArray<Int>{})
	static public function parseInt(what:Bool):Int;
	
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
	
	/** ( begin auto-generated from pow.xml ) Facilitates exponential expressions. */
	static public function pow(n:Single, e:Single):Single;
	
	@:overload(function(what:Int):Void{})
	/** ( begin auto-generated from print.xml ) Writes to the console area of the Processing environment. */
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Single):Void{})
	@:overload(function(what:Float):Void{})
	@:overload(function(what:String):Void{})
	@:overload(function(what:Dynamic):Void{})
	static public function print(what:Bool):Void;
	
	/** ( begin auto-generated from printCamera.xml ) Prints the current camera matrix to the Console (the text window at the bottom of Processing). */
	public function printCamera():Void;
	
	/** ( begin auto-generated from printMatrix.xml ) Prints the current matrix to the Console (the text window at the bottom of Processing). */
	public function printMatrix():Void;
	
	/** ( begin auto-generated from printProjection.xml ) Prints the current projection matrix to the Console (the text window at the bottom of Processing). */
	public function printProjection():Void;
	
	@:overload(function(what:Bool):Void{})
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Int):Void{})
	@:overload(function(what:Single):Void{})
	@:overload(function(what:Float):Void{})
	@:overload(function(what:String):Void{})
	@:overload(function(what:Dynamic):Void{})
	/** ( begin auto-generated from println.xml ) Writes to the text area of the Processing environment's console. */
	static public function println():Void;
	
	/** ( begin auto-generated from pushMatrix.xml ) Pushes the current transformation matrix onto the matrix stack. */
	public function pushMatrix():Void;
	
	/** ( begin auto-generated from pushStyle.xml ) The pushStyle() function saves the current style settings and popStyle() restores the prior settings. */
	public function pushStyle():Void;
	
	/** ( begin auto-generated from quad.xml ) A quad is a quadrilateral, a four sided polygon. */
	public function quad(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single, x4:Single, y4:Single):Void;
	
	@:overload(function(cx:Single, cy:Single, cz:Single, x3:Single, y3:Single, z3:Single):Void{})
	public function quadraticVertex(cx:Single, cy:Single, x3:Single, y3:Single):Void;
	
	/** ( begin auto-generated from radians.xml ) Converts a degree measurement to its corresponding value in radians. */
	static public function radians(degrees:Single):Single;
	
	/** ( begin auto-generated from random.xml ) Generates random numbers. */
	@:overload(function(low:Single, high:Single):Single{})
	public function random(high:Single):Single;
	
	/** ( begin auto-generated from randomSeed.xml ) Sets the seed value for random(). */
	public function randomSeed(seed:Int):Void;
	
	@:overload(function(a:Single, b:Single, c:Single, d:Single, r:Single):Void{})
	@:overload(function(a:Single, b:Single, c:Single, d:Single, tl:Single, tr:Single, br:Single, bl:Single):Void{})
	/** ( begin auto-generated from rect.xml ) Draws a rectangle to the screen. */
	public function rect(a:Single, b:Single, c:Single, d:Single):Void;
	
	/** ( begin auto-generated from rectMode.xml ) Modifies the location from which rectangles draw. */
	public function rectMode(mode:Int):Void;
	
	/** ( begin auto-generated from red.xml ) Extracts the red value from a color, scaled to match current colorMode(). */
	public function red(rgb:Int):Single;
	
	/** ( begin auto-generated from redraw.xml ) Executes the code within draw() one time. */
	public function redraw():Void;
	
	public function registerDispose(o:Dynamic):Void;
	
	public function registerDraw(o:Dynamic):Void;
	
	public function registerKeyEvent(o:Dynamic):Void;
	
	public function registerMouseEvent(o:Dynamic):Void;
	
	public function registerPost(o:Dynamic):Void;
	
	public function registerPre(o:Dynamic):Void;
	
	public function registerSize(o:Dynamic):Void;
	
	/** Remove information associated with this renderer from the cache, if any. */
	public function removeCache(renderer:PGraphics):Void;
	
	//public function removeListeners(comp:java.awt.Component):Void;
	
	/** Remove information associated with this renderer from the cache, if any. */
	public function removeParams(renderer:PGraphics):Void;
	
	/** ( begin auto-generated from requestImage.xml ) This function load images on a separate thread so that your sketch does not freeze while images load during setup(). */
	@:overload(function(filename:String, extension:String): PImage{})
	@:overload(function(filename:String, extension:String, params:Dynamic): PImage{})
	public function requestImage(filename:String): PImage;
	
	/** ( begin auto-generated from resetMatrix.xml ) Replaces the current matrix with the identity matrix. */
	public function resetMatrix():Void;
	
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>):java.NativeArray<String>{})
	@:overload(function(list:Dynamic):Dynamic{})
	/** ( begin auto-generated from reverse.xml ) Reverses the order of an array. */
	static public function reverse(list:java.NativeArray<Bool>):java.NativeArray<Bool>;
	
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
	
	/** ( begin auto-generated from round.xml ) Calculates the integer closest to the value parameter. */
	static public function round(n:Single):Int;
	
	/** Main method for the primary animation thread. */
	public function run():Void;
	
	/** main() method for running this class from the command line. */
	static public function runSketch(args:java.NativeArray<String>, constructedApplet: PApplet):Void;
	
	/** ( begin auto-generated from saturation.xml ) Extracts the saturation value from a color. */
	public function saturation(rgb:Int):Single;
	
	/** ( begin auto-generated from save.xml ) Saves an image from the display window. */
	public function save(filename:String):Void;
	
	@:overload(function(file:java.io.File, data:java.NativeArray<Int>):Void{})
	@:overload(function(output:java.io.OutputStream, data:java.NativeArray<Int>):Void{})
	/** ( begin auto-generated from saveBytes.xml ) Opposite of loadBytes(), will write an entire array of bytes to a file. */
	public function saveBytes(filename:String, data:java.NativeArray<Int>):Void;
	
	/** Identical to savePath(), but returns a File object. */
	//public function saveFile(where:String): java.io.File;
	
	/** ( begin auto-generated from saveFrame.xml ) Saves a numbered sequence of images, one image each time the function is run. */
	@:overload(function(filename:String):Void{})
	public function saveFrame():Void;
	
	/** Returns a path inside the applet folder to save to. */
	public function savePath(where:String):String;
	
	@:overload(function(target:String, source: java.io.InputStream):Bool{})
	/** Identical to the other saveStream(), but writes to a File object, for greater control over the file location. */
	@:overload(function(target:java.io.File, source:String):Bool{})
	@:overload(function(target:java.io.File, source: java.io.InputStream):Bool{})
	@:overload(function(target:java.io.OutputStream, source: java.io.InputStream):Void{})
	/** ( begin auto-generated from saveStream.xml ) Save the contents of a stream to a file in the sketch folder. */
	public function saveStream(target:String, source:String):Bool;
	
	@:overload(function(file:java.io.File, data:java.NativeArray<String>):Void{})
	@:overload(function(output:java.io.OutputStream, data:java.NativeArray<String>):Void{})
	/** ( begin auto-generated from saveStrings.xml ) Writes an array of strings to a file, one line per string. */
	public function saveStrings(filename:String, data:java.NativeArray<String>):Void;
	
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
	
	/** ( begin auto-generated from second.xml ) Processing communicates with the clock on your computer. */
	static public function second():Int;
	
	/** ( begin auto-generated from selectFolder.xml ) Opens a platform-specific file chooser dialog to select a folder for input. */
	@:overload(function(prompt:String):String{})
	public function selectFolder():String;
	
	/** ( begin auto-generated from selectInput.xml ) Opens a platform-specific file chooser dialog to select a file for input. */
	@:overload(function(prompt:String):String{})
	/** Open a platform-specific file chooser dialog to select a file for input. */
	public function selectInput():String;
	
	/** ( begin auto-generated from selectOutput.xml ) Open a platform-specific file save dialog to create of select a file for output. */
	@:overload(function(prompt:String):String{})
	/** Open a platform-specific file save dialog to select a file for output. */
	public function selectOutput():String;
	
	/** Advanced */
	@:overload(function(x:Int, y:Int, img: PImage):Void{})
	/** ( begin auto-generated from PImage_set.xml ) Changes the color of any pixel or writes an image directly into the display window. The x and y parameters specify the pixel to change and the color parameter specifies the color value. */
	public function set(x:Int, y:Int, c:Int):Void;
	
	/** Store data of some kind for a renderer that requires extra metadata of some kind. */
	public function setCache(renderer:PGraphics, storage:Dynamic):Void;
	
	/** Set the current transformation to the contents of the specified source. */
	@:overload(function(source:PMatrix2D):Void{})
	/** Set the current transformation to the contents of the specified source. */
	@:overload(function(source:PMatrix3D):Void{})
	/** Set the current transformation matrix to the contents of another. */
	public function setMatrix(source:PMatrix):Void;
	
	/** Store parameters for a renderer that requires extra metadata of some kind. */
	public function setParams(renderer:PGraphics, params:Dynamic):Void;
	
	/** ( begin auto-generated from setup.xml ) The setup() function is called once when the program starts. */
	public function setup():Void;
	
	/** Set this sketch to communicate its state back to the PDE. */
	public function setupExternalMessages():Void;
	
	/** Set up a listener that will fire proper component resize events in cases where frame.setResizable(true) is called. */
	public function setupFrameResizeListener():Void;
	
	/** Convenience method to draw at a particular location. */
	@:overload(function(shape:PShape, x:Single, y:Single):Void{})
	/** ( begin auto-generated from shape.xml ) Displays shapes to the screen. */
	@:overload(function(shape:PShape, a:Single, b:Single, c:Single, d:Single):Void{})
	public function shape(shape:PShape):Void;
	
	/** ( begin auto-generated from shapeMode.xml ) Modifies the location from which shapes draw. */
	public function shapeMode(mode:Int):Void;
	
	/** ( begin auto-generated from shearX.xml ) Shears a shape around the x-axis the amount specified by the angle parameter. */
	public function shearX(angle:Single):Void;
	
	/** ( begin auto-generated from shearY.xml ) Shears a shape around the y-axis the amount specified by the angle parameter. */
	public function shearY(angle:Single):Void;
	
	/** ( begin auto-generated from shininess.xml ) Sets the amount of gloss in the surface of shapes. */
	public function shininess(shine:Single):Void;
	
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>):java.NativeArray<String>{})
	@:overload(function(list:Dynamic):Dynamic{})
	/** ( begin auto-generated from shorten.xml ) Decreases an array by one element and returns the shortened array. */
	static public function shorten(list:java.NativeArray<Bool>):java.NativeArray<Bool>;
	
	/** Display a warning that the specified method is only available with 3D. */
	static public function showDepthWarning(method:String):Void;
	
	/** Display a warning that the specified method that takes x, y, z parameters can only be used with x and y parameters in this renderer. */
	static public function showDepthWarningXYZ(method:String):Void;
	
	/** Display a warning that the specified method is simply unavailable. */
	static public function showMethodWarning(method:String):Void;
	
	/** Display a warning that the specified method is not implemented, meaning that it could be either a completely missing function, although other variations of it may still work properly. */
	static public function showMissingWarning(method:String):Void;
	
	/** Error that a particular variation of a method is unavailable (even though other variations are). */
	static public function showVariationWarning(str:String):Void;
	
	/** ( begin auto-generated from sin.xml ) Calculates the sine of an angle. */
	static public function sin(angle:Single):Single;
	
	@:overload(function(w:Int, h:Int, renderer:String):Void{})
	@:overload(function(w:Int, h:Int, renderer:String, path:String):Void{})
	/** ( begin auto-generated from size.xml ) Defines the dimension of the display window in units of pixels. */
	public function size(w:Int, h:Int):Void;
	
	//public function sketchFile(where:String): java.io.File;
	
	public function sketchFullScreen():Bool;
	
	public function sketchHeight():Int;
	
	/** Prepend the sketch folder path to the filename (or path) that is passed in. */
	public function sketchPath(where:String):String;
	
	inline public function sketchPathGet():String {
		return untyped sketchPath;
	}
	
	public function sketchRenderer():String;
	
	public function sketchSmooth():Int;
	
	public function sketchWidth():Int;
	
	@:overload(function(level:Int):Void{})
	/** ( begin auto-generated from smooth.xml ) Draws all geometry with smooth (anti-aliased) edges. */
	public function smooth():Void;
	
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>):java.NativeArray<String>{})
	@:overload(function(list:java.NativeArray<Int>, count:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, count:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, count:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>, count:Int):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>, count:Int):java.NativeArray<String>{})
	/** ( begin auto-generated from sort.xml ) Sorts an array of numbers from smallest to largest and puts an array of words in alphabetical order. */
	static public function sort(list:java.NativeArray<Int>):java.NativeArray<Int>;
	
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
	
	@:overload(function(list:java.NativeArray<Bool>, value:java.NativeArray<Bool>, index:Int):java.NativeArray<Bool>{})
	@:overload(function(list:java.NativeArray<Int>, value:Int, index:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, value:Int, index:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, value:Int, index:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, value:java.NativeArray<Int>, index:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, value:java.NativeArray<Int>, index:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, value:java.NativeArray<Int>, index:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>, value:Single, index:Int):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<Single>, value:java.NativeArray<Single>, index:Int):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>, value:String, index:Int):java.NativeArray<String>{})
	@:overload(function(list:java.NativeArray<String>, value:java.NativeArray<String>, index:Int):java.NativeArray<String>{})
	@:overload(function(list:Dynamic, value:Dynamic, index:Int):Dynamic{})
	/** ( begin auto-generated from splice.xml ) Inserts a value or array of values into an existing array. */
	static public function splice(list:java.NativeArray<Bool>, value:Bool, index:Int):java.NativeArray<Bool>;
	
	@:overload(function(value:String, delim:String):java.NativeArray<String>{})
	/** ( begin auto-generated from split.xml ) The split() function breaks a string into pieces using a character or string as the divider. */
	static public function split(value:String, delim:Int):java.NativeArray<String>;
	
	/** ( begin auto-generated from splitTokens.xml ) The splitTokens() function splits a String at one or many character "tokens." The tokens parameter specifies the character or characters to be used as a boundary. */
	@:overload(function(value:String, delim:String):java.NativeArray<String>{})
	static public function splitTokens(value:String):java.NativeArray<String>;
	
	/** ( begin auto-generated from spotLight.xml ) Adds a spot light. */
	public function spotLight(red:Single, green:Single, blue:Single, x:Single, y:Single, z:Single, nx:Single, ny:Single, nz:Single, angle:Single, concentration:Single):Void;
	
	/** ( begin auto-generated from sq.xml ) Squares a number (multiplies a number by itself). */
	static public function sq(n:Single):Single;
	
	/** ( begin auto-generated from sqrt.xml ) Calculates the square root of a number. */
	static public function sqrt(n:Single):Single;
	
	/** Called by the browser or applet viewer to inform this applet that it should start its execution. */
	public function start():Void;
	
	/** ( begin auto-generated from status.xml ) Displays message in the browser's status area. */
	public function status(value:String):Void;
	
	/** Called by the browser or applet viewer to inform this applet that it should stop its execution. */
	public function stop():Void;
	
	@:overload(function(x:Int):String{})
	@:overload(function(x:Int):String{})
	@:overload(function(x:Int):String{})
	@:overload(function(x:Single):String{})
	@:overload(function(x:java.NativeArray<Bool>):java.NativeArray<String>{})
	@:overload(function(x:java.NativeArray<Int>):java.NativeArray<String>{})
	@:overload(function(x:java.NativeArray<Int>):java.NativeArray<String>{})
	@:overload(function(x:java.NativeArray<Int>):java.NativeArray<String>{})
	@:overload(function(x:java.NativeArray<Single>):java.NativeArray<String>{})
	static public function str(x:Bool):String;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, alpha:Single):Void{})
	/** ( begin auto-generated from stroke.xml ) Sets the color used to draw lines and borders around shapes. */
	public function stroke(rgb:Int):Void;
	
	/** ( begin auto-generated from strokeCap.xml ) Sets the style for rendering line endings. */
	public function strokeCap(cap:Int):Void;
	
	/** ( begin auto-generated from strokeJoin.xml ) Sets the style of the joints which connect line segments. */
	public function strokeJoin(join:Int):Void;
	
	/** ( begin auto-generated from strokeWeight.xml ) Sets the width of the stroke used for lines, points, and the border around shapes. */
	public function strokeWeight(weight:Single):Void;
	
	public function style(s:PStyle):Void;
	
	@:overload(function(list:java.NativeArray<Int>, start:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, start:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, start:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>, start:Int):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>, start:Int):java.NativeArray<String>{})
	@:overload(function(list:Dynamic, start:Int):Dynamic{})
	/** ( begin auto-generated from subset.xml ) Extracts an array of elements from an existing array. */
	@:overload(function(list:java.NativeArray<Bool>, start:Int, count:Int):java.NativeArray<Bool>{})
	@:overload(function(list:java.NativeArray<Int>, start:Int, count:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, start:Int, count:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Int>, start:Int, count:Int):java.NativeArray<Int>{})
	@:overload(function(list:java.NativeArray<Single>, start:Int, count:Int):java.NativeArray<Single>{})
	@:overload(function(list:java.NativeArray<String>, start:Int, count:Int):java.NativeArray<String>{})
	@:overload(function(list:Dynamic, start:Int, count:Int):Dynamic{})
	static public function subset(list:java.NativeArray<Bool>, start:Int):java.NativeArray<Bool>;
	
	/** ( begin auto-generated from tan.xml ) Calculates the ratio of the sine and cosine of an angle. */
	static public function tan(angle:Single):Single;
	
	@:overload(function(num:Int, x:Single, y:Single):Void{})
	/** This does a basic number formatting, to avoid the generally ugly appearance of printing floats. */
	@:overload(function(num:Single, x:Single, y:Single):Void{})
	/** Advanced */
	@:overload(function(str:String, x:Single, y:Single):Void{})
	@:overload(function(num:Int, x:Single, y:Single, z:Single):Void{})
	@:overload(function(c:Int, x:Single, y:Single, z:Single):Void{})
	@:overload(function(num:Single, x:Single, y:Single, z:Single):Void{})
	/** Same as above but with a z coordinate. */
	@:overload(function(str:String, x:Single, y:Single, z:Single):Void{})
	/** Advanced */
	@:overload(function(str:String, x1:Single, y1:Single, x2:Single, y2:Single):Void{})
	/** Advanced */
	@:overload(function(chars:java.NativeArray<Int>, start:Int, stop:Int, x:Single, y:Single):Void{})
	@:overload(function(chars:java.NativeArray<Int>, start:Int, stop:Int, x:Single, y:Single, z:Single):Void{})
	/** ( begin auto-generated from text.xml ) Draws text to the screen. */
	public function text(c:Int, x:Single, y:Single):Void;
	
	/** ( begin auto-generated from textAlign.xml ) Sets the current alignment for drawing text. */
	@:overload(function(alignX:Int, alignY:Int):Void{})
	public function textAlign(align:Int):Void;
	
	/** ( begin auto-generated from textAscent.xml ) Returns ascent of the current font at its current size. */
	public function textAscent():Single;
	
	/** ( begin auto-generated from textDescent.xml ) Returns descent of the current font at its current size. */
	public function textDescent():Single;
	
	@:overload(function(which:PFont, size:Single):Void{})
	/** ( begin auto-generated from textFont.xml ) Sets the current font that will be drawn with the text() function. */
	public function textFont(which:PFont):Void;
	
	/** ( begin auto-generated from textLeading.xml ) Sets the spacing between lines of text in units of pixels. */
	public function textLeading(leading:Single):Void;
	
	/** ( begin auto-generated from textMode.xml ) Sets the way text draws to the screen. */
	public function textMode(mode:Int):Void;
	
	/** ( begin auto-generated from textSize.xml ) Sets the current font size. */
	public function textSize(size:Single):Void;
	
	/** ( begin auto-generated from textWidth.xml ) Calculates and returns the width of any character or text string. */
	@:overload(function(str:String):Single{})
	@:overload(function(chars:java.NativeArray<Int>, start:Int, length:Int):Single{})
	public function textWidth(c:Int):Single;
	
	/** ( begin auto-generated from texture.xml ) Sets a texture to be applied to vertex points. */
	public function texture(image:PImage):Void;
	
	/** ( begin auto-generated from textureMode.xml ) Sets the coordinate space for texture mapping. */
	public function textureMode(mode:Int):Void;
	
	/** Launch a new thread and call the specified function from that new thread. */
	public function thread(name:String):Void;
	
	@:overload(function(gray:Single):Void{})
	@:overload(function(rgb:Int, alpha:Single):Void{})
	@:overload(function(gray:Single, alpha:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single):Void{})
	@:overload(function(v1:Single, v2:Single, v3:Single, a:Single):Void{})
	/** ( begin auto-generated from tint.xml ) Sets the fill value for displaying images. */
	public function tint(rgb:Int):Void;
	
	@:overload(function(tx:Single, ty:Single, tz:Single):Void{})
	/** ( begin auto-generated from translate.xml ) Specifies an amount to displace objects within the display window. */
	public function translate(tx:Single, ty:Single):Void;
	
	/** ( begin auto-generated from triangle.xml ) A triangle is a plane created by connecting three points. */
	public function triangle(x1:Single, y1:Single, x2:Single, y2:Single, x3:Single, y3:Single):Void;
	
	@:overload(function(array:java.NativeArray<String>):java.NativeArray<String>{})
	/** ( begin auto-generated from trim.xml ) Removes whitespace characters from the beginning and end of a String. */
	static public function trim(str:String):String;
	
	/** ( begin auto-generated from unbinary.xml ) Converts a String representation of a binary number to its equivalent integer value. */
	static public function unbinary(value:String):Int;
	
	/** ( begin auto-generated from unhex.xml ) Converts a String representation of a hexadecimal number to its equivalent integer value. */
	static public function unhex(value:String):Int;
	
	public function unregisterDispose(o:Dynamic):Void;
	
	public function unregisterDraw(o:Dynamic):Void;
	
	public function unregisterKeyEvent(o:Dynamic):Void;
	
	public function unregisterMouseEvent(o:Dynamic):Void;
	
	public function unregisterPost(o:Dynamic):Void;
	
	public function unregisterPre(o:Dynamic):Void;
	
	public function unregisterSize(o:Dynamic):Void;
	
	//public function update(screen:java.awt.Graphics):Void;
	
	/** Call to remove, then add, listeners to a component. */
	//public function updateListeners(comp:java.awt.Component):Void;
	
	@:overload(function(x1:Int, y1:Int, x2:Int, y2:Int):Void{})
	/** ( begin auto-generated from updatePixels.xml ) Updates the display window with the data in the pixels[] array. */
	public function updatePixels():Void;
	
	static public function urlDecode(str:String):String;
	
	static public function urlEncode(str:String):String;
	
	@:overload(function(x:Single, y:Single):Void{})
	@:overload(function(x:Single, y:Single, z:Single):Void{})
	@:overload(function(x:Single, y:Single, u:Single, v:Single):Void{})
	/** ( begin auto-generated from vertex.xml ) All shapes are constructed by connecting a series of vertices. */
	@:overload(function(x:Single, y:Single, z:Single, u:Single, v:Single):Void{})
	/** Used by renderer subclasses or PShape to efficiently pass in already formatted vertex information. */
	public function vertex(v:java.NativeArray<Single>):Void;
	
	/** ( begin auto-generated from year.xml ) Processing communicates with the clock on your computer. */
	static public function year():Int;
	
	
}