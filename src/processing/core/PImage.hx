package processing.core;

#if !java private typedef Single = Float; #end

extern class PImage {

	/** Format for this image, one of RGB, ARGB or ALPHA. */
	public var format:Int;
	/** ( begin auto-generated from PImage_height.xml ) The height of the image in units of pixels. */
	public var height:Int;
	/** Path to parent object that will be used with save(). */
	public var parent: PApplet;
	/** ( begin auto-generated from pixels.xml ) Array containing the values for all the pixels in the display window. */
	public var pixels:java.NativeArray<Int>;
	/** ( begin auto-generated from PImage_width.xml ) The width of the image in units of pixels. */
	public var width:Int;

	/** Construct a new PImage from a java.awt.Image. */
	@:overload(function(width:Int, height:Int):Void{})
	@:overload(function(width:Int, height:Int, format:Int):Void{})
	/** ( begin auto-generated from PImage.xml ) Datatype for storing images. */
	public function new():Void;
	
	
	/** ( begin auto-generated from PImage_blend.xml ) Blends a region of pixels into the image specified by the img parameter. */
	@:overload(function(src:PImage, sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int, mode:Int):Void{})
	public function blend(sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int, mode:Int):Void;
	
	/** ( begin auto-generated from blendColor.xml ) Blends two color values together based on the blending mode given as the MODE parameter. */
	static public function blendColor(c1:Int, c2:Int, mode:Int):Int;
	
	/** Duplicate an image, returns new PImage object. */
	public function clone():Dynamic;
	
	@:overload(function(src:PImage, sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int):Void{})
	/** ( begin auto-generated from PImage_copy.xml ) Copies a region of pixels from one image into another. */
	public function copy(sx:Int, sy:Int, sw:Int, sh:Int, dx:Int, dy:Int, dw:Int, dh:Int):Void;
	
	public function delete():Void;
	
	/** ( begin auto-generated from PImage_filter.xml ) Filters an image as defined by one of the following modes:THRESHOLD - converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. */
	@:overload(function(kind:Int, param:Single):Void{})
	public function filter(kind:Int):Void;
	
	/** ( begin auto-generated from PImage_get.xml ) Reads the color of any pixel or grabs a section of an image. */
	@:overload(function(x:Int, y:Int):Int{})
	@:overload(function(x:Int, y:Int, w:Int, h:Int): PImage{})
	/** Returns a copy of this PImage. */
	public function get(): PImage;
	
	/** Get cache storage data for the specified renderer. */
	public function getCache(renderer:PGraphics):Dynamic;
	
	/** Returns a BufferedImage from this PImage. */
	//public function getImage(): java.awt.Image;
	
	public function getModifiedX1():Int;
	
	public function getModifiedX2():Int;
	
	public function getModifiedY1():Int;
	
	public function getModifiedY2():Int;
	
	/** Get the parameters for the specified renderer. */
	public function getParams(renderer:PGraphics):Dynamic;
	
	/** Function to be used by subclasses of PImage to init later than at the constructor, or re-init later when things changes. */
	public function init(width:Int, height:Int, format:Int):Void;
	
	public function isModified():Bool;
	
	/** ( begin auto-generated from PImage_loadPixels.xml ) Loads the pixel data for the image into its pixels[] array. */
	public function loadPixels():Void;
	
	@:overload(function(img:PImage):Void{})
	/** ( begin auto-generated from PImage_mask.xml ) Masks part of an image from displaying by loading another image and using it as an alpha channel. */
	public function mask(maskArray:java.NativeArray<Int>):Void;
	
	/** Remove information associated with this renderer from the cache, if any. */
	public function removeCache(renderer:PGraphics):Void;
	
	/** Remove information associated with this renderer from the cache, if any. */
	public function removeParams(renderer:PGraphics):Void;
	
	/** ( begin auto-generated from PImage_resize.xml ) Resize the image to a new width and height. */
	public function resize(w:Int, h:Int):Void;
	
	/** ( begin auto-generated from PImage_save.xml ) Saves the image into a file. */
	public function save(filename:String):Bool;
	
	/** Advanced */
	@:overload(function(x:Int, y:Int, img: PImage):Void{})
	/** ( begin auto-generated from PImage_set.xml ) Changes the color of any pixel or writes an image directly into the display window. The x and y parameters specify the pixel to change and the color parameter specifies the color value. */
	public function set(x:Int, y:Int, c:Int):Void;
	
	/** Store data of some kind for a renderer that requires extra metadata of some kind. */
	public function setCache(renderer:PGraphics, storage:Dynamic):Void;
	
	@:overload(function(m:Bool):Void{})
	public function setModified():Void;
	
	/** Store parameters for a renderer that requires extra metadata of some kind. */
	public function setParams(renderer:PGraphics, params:Dynamic):Void;
	
	/** ( begin auto-generated from PImage_updatePixels.xml ) Updates the image with the data in its pixels[] array. */
	@:overload(function(x:Int, y:Int, w:Int, h:Int):Void{})
	public function updatePixels():Void;
	
	
}