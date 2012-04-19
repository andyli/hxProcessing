package processing.core;

#if !java private typedef Single = Float; #end


extern class Glyph  {

	public var height:Int;
	public var image:PImage;
	public var index:Int;
	public var leftExtent:Int;
	public var setWidth:Int;
	public var topExtent:Int;
	public var value:Int;
	public var width:Int;

	//@:overload(function(is:java.io.DataInputStream):Void{})
	public function new():Void;
	
	
	
}

extern class PFont implements processing.core.PConstants {

	/* The default Processing character set. */
	static public var CHARSET:java.NativeArray<Int>;

	@:overload(function(input:java.io.InputStream):Void{})
	/* ( begin auto-generated from PFont.xml ) PFont is the font class for Processing. */
	@:overload(function(font:java.awt.Font, smooth:Bool):Void{})
	/* Create a new image-based font on the fly. */
	@:overload(function(font:java.awt.Font, smooth:Bool, charset:java.NativeArray<Int>):Void{})
	/* Adds an additional parameter that indicates the font came from a file, not a built-in OS font. */
	@:overload(function(font:java.awt.Font, smooth:Bool, charset:java.NativeArray<Int>, stream:Bool):Void{})
	public function new():Void;
	
	
	/* Returns the ascent of this font from the baseline. */
	public function ascent():Single;
	
	/* Returns how far this font descends from the baseline. */
	public function descent():Single;
	
	/* Starting with Java 1.5, Apple broke the ability to specify most fonts. */
	//@:overload(function(name:String):java.awt.Font{})
	/* Attempt to find the native version of this font. */
	//public function findFont():java.awt.Font;
	
	/* Get cache storage data for the specified renderer. */
	public function getCache(renderer:PGraphics):Dynamic;
	
	/* Return the native java.awt.Font associated with this PFont (if any). */
	//public function getFont():java.awt.Font;
	
	@:overload(function(c:Int):PFont.Glyph{})
	public function getGlyph(i:Int):PFont.Glyph;
	
	public function getGlyphCount():Int;
	
	public function getName():String;
	
	public function getPostScriptName():String;
	
	/* Return size of this font. */
	public function getSize():Int;
	
	public function isStream():Bool;
	
	/* Currently un-implemented for .vlw fonts, but honored for layout in case subclasses use it. */
	public function kern(a:Int, b:Int):Single;
	
	/* ( begin auto-generated from PFont_list.xml ) Gets a list of the fonts installed on the system. */
	static public function list():java.NativeArray<String>;
	
	static public function loadFonts():Void;
	
	/* Remove information associated with this renderer from the cache, if any. */
	public function removeCache(renderer:PGraphics):Void;
	
	/* Write this PFont to an OutputStream. */
	//public function save(output:java.io.OutputStream):Void;
	
	/* Store data of some kind for a renderer that requires extra metadata of some kind. */
	public function setCache(renderer:PGraphics, storage:Dynamic):Void;
	
	/* Set the native complement of this font. */
	//public function setFont(font:java.awt.Font):Void;
	
	public function setSubsetting():Void;
	
	/* Width of this character for a font of size 1. */
	public function width(c:Int):Single;
	
	
}