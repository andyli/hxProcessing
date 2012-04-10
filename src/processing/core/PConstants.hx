package processing.core;

#if !jvm
typedef Single = Float;
#end

extern class PConstants {
	// render & flush modes (in P3D)
	
	static public var IMMEDIATE:Int;
	static public var RETAINED:Int;
	
	static public var FLUSH_CONTINUOUSLY:Int;
	static public var FLUSH_WHEN_FULL:Int;
	
	// vertex fields
	
	static public var X:Int;  // model coords xyz (formerly MX/MY/MZ)
	static public var Y:Int;
	static public var Z:Int;
	
	static public var R:Int;  // actual rgb, after lighting
	static public var G:Int;  // fill stored here, transform in place
	static public var B:Int;  // TODO don't do that anymore (?)
	static public var A:Int;
	
	static public var U:Int; // texture
	static public var V:Int;
	
	static public var NX:Int; // normal
	static public var NY:Int;
	static public var NZ:Int;
	
	static public var EDGE:Int;
	
	// stroke
	
	/** stroke argb values */
	static public var SR:Int;
	static public var SG:Int;
	static public var SB:Int;
	static public var SA:Int;
	
	/** stroke weight */
	static public var SW:Int;
	
	// transformations (2D and 3D)
	
	static public var TX:Int; // transformed xyzw
	static public var TY:Int;
	static public var TZ:Int;
	
	static public var VX:Int; // view space coords
	static public var VY:Int;
	static public var VZ:Int;
	static public var VW:Int;
	
	
	// material properties
	
	// Ambient color (usually to be kept the same as diffuse)
	// fill(_) sets both ambient and diffuse.
	static public var AR:Int;
	static public var AG:Int;
	static public var AB:Int;
	
	// Diffuse is shared with fill.
	static public var DR:Int;  // TODO needs to not be shared, this is a material property
	static public var DG:Int;
	static public var DB:Int;
	static public var DA:Int;
	
	// specular (by default kept white)
	static public var SPR:Int;
	static public var SPG:Int;
	static public var SPB:Int;
	
	static public var SHINE:Int;
	
	// emissive (by default kept black)
	static public var ER:Int;
	static public var EG:Int;
	static public var EB:Int;
	
	// has this vertex been lit yet
	static public var BEEN_LIT:Int;
	
	// has this vertex been assigned a normal yet
	static public var HAS_NORMAL:Int;
	
	static public var VERTEX_FIELD_COUNT:Int;
	
	// renderers known to processing.core
	
	static var P2D:String;
	static var P3D:String;
	static var JAVA2D:String;
	static var OPENGL:String;
	static var PDF:String;
	static var DXF:String;
	
	
	// platform IDs for PApplet.platform
	
	static var OTHER:Int;
	static var WINDOWS:Int;
	static var MACOSX:Int;
	static var LINUX:Int;
	
	static var platformNames:jvm.NativeArray<String>;
	
	
	static var EPSILON:Single;
	
	
	// max/min values for numbers
	
	/**
	* Same as Float.MAX_VALUE, but included for parity with MIN_VALUE,
	* and to avoid teaching static methods on the first day.
	*/
	static var MAX_FLOAT:Single;
	/**
	* Note that Float.MIN_VALUE is the smallest <EM>positive</EM> value
	* for a floating point number, not actually the minimum (negative) value
	* for a float. This constant equals 0xFF7FFFFF, the smallest (farthest
	* negative) value a float can have before it hits NaN.
	*/
	static var MIN_FLOAT:Single;
	/** Largest possible (positive) integer value */
	static var MAX_INT:Int;
	/** Smallest possible (negative) integer value */
	static var MIN_INT:Int;
	
	// shapes
	
	static public var VERTEX:Int;
	static public var BEZIER_VERTEX:Int;
	static public var QUAD_BEZIER_VERTEX:Int;
	static public var CURVE_VERTEX:Int;
	static public var BREAK:Int;
	
	// useful goodness
	
	/**
	* ( begin auto-generated from PI.xml )
	*
	* PI is a mathematical constant with the value 3.14159265358979323846. It
	* is the ratio of the circumference of a circle to its diameter. It is
	* useful in combination with the trigonometric functions <b>sin()</b> and
	* <b>cos()</b>.
	*
	* ( end auto-generated )
	* @webref constants
	* @see PConstants#HALF_PI
	* @see PConstants#TWO_PI
	* @see PConstants#QUARTER_PI
	*
	*/
	static var PI:Single;
	/**
	* ( begin auto-generated from HALF_PI.xml )
	*
	* HALF_PI is a mathematical constant with the value
	* 1.57079632679489661923. It is half the ratio of the circumference of a
	* circle to its diameter. It is useful in combination with the
	* trigonometric functions <b>sin()</b> and <b>cos()</b>.
	*
	* ( end auto-generated )
	* @webref constants
	* @see PConstants#PI
	* @see PConstants#TWO_PI
	* @see PConstants#QUARTER_PI
	*/
	static var HALF_PI:Single;
	static var THIRD_PI:Single;
	/**
	* ( begin auto-generated from QUARTER_PI.xml )
	*
	* QUARTER_PI is a mathematical constant with the value 0.7853982. It is
	* one quarter the ratio of the circumference of a circle to its diameter.
	* It is useful in combination with the trigonometric functions
	* <b>sin()</b> and <b>cos()</b>.
	*
	* ( end auto-generated )
	* @webref constants
	* @see PConstants#PI
	* @see PConstants#TWO_PI
	* @see PConstants#HALF_PI
	*/
	static var QUARTER_PI:Single;
	/**
	* ( begin auto-generated from TWO_PI.xml )
	*
	* TWO_PI is a mathematical constant with the value 6.28318530717958647693.
	* It is twice the ratio of the circumference of a circle to its diameter.
	* It is useful in combination with the trigonometric functions
	* <b>sin()</b> and <b>cos()</b>.
	*
	* ( end auto-generated )
	* @webref constants
	* @see PConstants#PI
	* @see PConstants#HALF_PI
	* @see PConstants#QUARTER_PI
	*/
	static var TWO_PI:Single;
	
	static var DEG_TO_RAD:Single;
	static var RAD_TO_DEG:Single;
	
	
	// angle modes
	
	//static var RADIANS:Int;
	//static var DEGREES:Int;
	
	
	// used by split, all the standard whitespace chars
	// (also includes unicode nbsp, that little bostage)
	
	static var WHITESPACE:String;
	
	
	// for colors and/or images
	
	static var RGB:Int;  // image & color
	static var ARGB:Int;  // image
	static var HSB:Int;  // color
	static var ALPHA:Int;  // image
	static var CMYK:Int;  // image & color (someday)
	
	
	// image file types
	
	static var TIFF:Int;
	static var TARGA:Int;
	static var JPEG:Int;
	static var GIF:Int;
	
	
	// filter/convert types
	
	static var BLUR:Int;
	static var GRAY:Int;
	static var INVERT:Int;
	static var OPAQUE:Int;
	static var POSTERIZE:Int;
	static var THRESHOLD:Int;
	static var ERODE:Int;
	static var DILATE:Int;
	
	
	// blend mode keyword definitions
	// @see processing.core.PImage#blendColor(int,int,int)
	
	public static var REPLACE:Single;
	public static var BLEND:Single;
	public static var ADD:Single;
	public static var SUBTRACT:Single;
	public static var LIGHTEST:Single;
	public static var DARKEST:Single;
	public static var DIFFERENCE:Single;
	public static var EXCLUSION:Single;
	public static var MULTIPLY:Single;
	public static var SCREEN:Single;
	public static var OVERLAY:Single;
	public static var HARD_LIGHT:Single;
	public static var SOFT_LIGHT:Single;
	public static var DODGE:Single;
	public static var BURN:Single;
	
	// colour component bitmasks
	
	public static var ALPHA_MASK:Int;
	public static var RED_MASK:Int;
	public static var GREEN_MASK:Int;
	public static var BLUE_MASK:Int;
	
	
	// for messages
	
	static var CHATTER:Int;
	static var COMPLAINT:Int;
	static var PROBLEM:Int;
	
	
	// types of transformation matrices
	
	static var PROJECTION:Int;
	static var MODELVIEW:Int;
	
	// types of projection matrices
	
	static var CUSTOM:Int; // user-specified fanciness
	static var ORTHOGRAPHIC:Int; // 2D isometric projection
	static var PERSPECTIVE:Int; // perspective matrix
	
	
	// shapes
	
	// the low four bits set the variety,
	// higher bits set the specific shape type
	
	//static var GROUP:Int;
	
	static var POINT:Int;  // shared with light (!)
	static var POINTS:Int;
	
	static var LINE:Int;
	static var LINES:Int;
	
	static var TRIANGLE:Int;
	static var TRIANGLES:Int;
	static var TRIANGLE_STRIP:Int;
	static var TRIANGLE_FAN:Int;
	
	static var QUAD:Int;
	static var QUADS:Int;
	static var QUAD_STRIP:Int;
	
	static var POLYGON:Int;
	static var PATH:Int;
	
	static var RECT:Int;
	static var ELLIPSE:Int;
	static var ARC:Int;
	
	static var SPHERE:Int;
	static var BOX:Int;
	
	static public var LINE_STRIP:Int;
	static public var LINE_LOOP:Int;
	static public var POINT_SPRITES:Int;
	
	static public var NON_STROKED_SHAPE:Int;
	static public var STROKED_SHAPE:Int;
	
	
	// shape closing modes
	
	static var OPEN:Int;
	static var CLOSE:Int;
	
	
	// shape drawing modes
	
	/** Draw mode convention to use (x, y) to (width, height) */
	static var CORNER:Int;
	/** Draw mode convention to use (x1, y1) to (x2, y2) coordinates */
	static var CORNERS:Int;
	/** Draw mode from the center, and using the radius */
	static var RADIUS:Int;
	/** @deprecated Use RADIUS instead. */
	static var CENTER_RADIUS:Int;
	/**
	* Draw from the center, using second pair of values as the diameter.
	* Formerly called CENTER_DIAMETER in alpha releases.
	*/
	static var CENTER:Int;
	/**
	* Synonym for the CENTER constant. Draw from the center,
	* using second pair of values as the diameter.
	*/
	static var DIAMETER:Int;
	/** @deprecated Use DIAMETER instead. */
	static var CENTER_DIAMETER:Int;
	
	
	// vertically alignment modes for text
	
	/** Default vertical alignment for text placement */
	static var BASELINE:Int;
	/** Align text to the top */
	static var TOP:Int;
	/** Align text from the bottom, using the baseline. */
	static var BOTTOM:Int;
	
	
	// uv texture orientation modes
	
	/** texture coordinates in 0..1 range */
	static var NORMAL:Int;
	/** @deprecated use NORMAL instead */
	static var NORMALIZED:Int;
	/** texture coordinates based on image width/height */
	static var IMAGE:Int;
	
	
	// text placement modes
	
	/**
	* textMode(MODEL) is the default, meaning that characters
	* will be affected by transformations like any other shapes.
	* <p/>
	* Changed value in 0093 to not interfere with LEFT, CENTER, and RIGHT.
	*/
	static var MODEL:Int;
	
	/**
	* textMode(SHAPE) draws text using the the glyph outlines of
	* individual characters rather than as textures. If the outlines are
	* not available, then textMode(SHAPE) will be ignored and textMode(MODEL)
	* will be used instead. For this reason, be sure to call textMode()
	* <EM>after</EM> calling textFont().
	* <p/>
	* Currently, textMode(SHAPE) is only supported by OPENGL mode.
	* It also requires Java 1.2 or higher (OPENGL requires 1.4 anyway)
	*/
	static var SHAPE:Int;
	
	
	// text alignment modes
	// are inherited from LEFT, CENTER, RIGHT
	
	// PTexture
	
	/** This constant identifies the texture target GL_TEXTURE_2D, that is, textures with normalized coordinates */
	public static var TEXTURE2D:Int;
	
	/** This constant identifies the nearest texture filter (point sampling) */
	//public static var POINT:Int; // shared with shape feature
	/** This constant identifies the linear texture filter, usually called bilinear sampling */
	public static var BILINEAR:Int;
	/** This constant identifies the linear/linear function to build mipmaps  */
	public static var TRILINEAR:Int;
	
	/** This constant identifies the clamp-to-edge wrapping mode */
	public static var CLAMP:Int;
	/** This constant identifies the repeat wrapping mode */
	public static var REPEAT:Int;
	
	/** Point sprite distance attenuation functions */
	public static var LINEAR:Int;
	public static var QUADRATIC:Int;
	
	// PShape3D
	
	/**  Static usage mode for PShape3D (vertices won't be updated after creation).  */
	public static var STATIC:Int;
	/**  Dynamic usage mode for PShape3D (vertices will be updated after creation). */
	public static var DYNAMIC:Int;
	/**  Dynamic usage mode for PShape3D (vertices will be updated at every frame). */
	public static var STREAM:Int;
	
	
	// stroke modes
	
	static var SQUARE:Int;  // called 'butt' in the svg spec
	static var ROUND:Int;
	static var PROJECT:Int;  // called 'square' in the svg spec
	static var MITER:Int;
	static var BEVEL:Int;
	
	
	// lighting
	
	static var AMBIENT:Int;
	static var DIRECTIONAL:Int;
	//static var POINT:Int;  // shared with shape feature
	static var SPOT:Int;
	
	
	// key constants
	
	// only including the most-used of these guys
	// if people need more esoteric keys, they can learn about
	// the esoteric java KeyEvent api and of virtual keys
	
	// both key and keyCode will equal these values
	// for 0125, these were changed to 'char' values, because they
	// can be upgraded to ints automatically by Java, but having them
	// as ints prevented split(blah, TAB) from working
	/*
	static final char BACKSPACE = 8;
	static final char TAB       = 9;
	static final char ENTER     = 10;
	static final char RETURN    = 13;
	static final char ESC       = 27;
	static final char DELETE    = 127;
	*/
	
	// i.e. if ((key == CODED) && (keyCode == UP))
	static var CODED:Int;
	
	// key will be CODED and keyCode will be this value
	static var UP:Int;
	static var DOWN:Int;
	static var LEFT:Int;
	static var RIGHT:Int;
	
	// key will be CODED and keyCode will be this value
	static var ALT:Int;
	static var CONTROL:Int;
	static var SHIFT:Int;
	
	
	// orientations (only used on Android, ignored on desktop)
	
	/** Screen orientation constant for portrait (the hamburger way). */
	static var PORTRAIT:Int;
	/** Screen orientation constant for landscape (the hot dog way). */
	static var LANDSCAPE:Int;
	
	
	// cursor types
	
	static var ARROW:Int;
	static var CROSS:Int;
	static var HAND:Int;
	static var MOVE:Int;
	static var TEXT:Int;
	static var WAIT:Int;
	
	
	// hints - hint values are positive for the alternate version,
	// negative of the same value returns to the normal/default state
	
	static var ENABLE_NATIVE_FONTS:Int;
	static var DISABLE_NATIVE_FONTS:Int;
	
	static var DISABLE_DEPTH_TEST:Int;
	static var ENABLE_DEPTH_TEST:Int;
	
	static var ENABLE_DEPTH_SORT:Int;
	static var DISABLE_DEPTH_SORT:Int;
	
	static var DISABLE_OPENGL_ERROR_REPORT:Int;
	static var ENABLE_OPENGL_ERROR_REPORT:Int;
	
	static var ENABLE_ACCURATE_TEXTURES:Int;
	static var DISABLE_ACCURATE_TEXTURES:Int;
	
	static var DISABLE_DEPTH_MASK:Int;
	static var ENABLE_DEPTH_MASK:Int;
	
	static var ENABLE_ACCURATE_2D:Int;
	static var DISABLE_ACCURATE_2D:Int;
	
	static var DISABLE_TEXTURE_CACHE:Int;
	static var ENABLE_TEXTURE_CACHE:Int;
	
	static var DISABLE_TRANSFORM_CACHE:Int;
	static var ENABLE_TRANSFORM_CACHE:Int;
	
	static var ENABLE_PERSPECTIVE_CORRECTED_LINES:Int;
	static var DISABLE_PERSPECTIVE_CORRECTED_LINES:Int;
	
	static var HINT_COUNT:Int;
	
	// error messages
	
	static var ERROR_BACKGROUND_IMAGE_SIZE:String;
	static var ERROR_BACKGROUND_IMAGE_FORMAT:String;
	
	static var ERROR_TEXTFONT_NULL_PFONT:String;
	
	static var ERROR_PUSHMATRIX_OVERFLOW:String;
	static var ERROR_PUSHMATRIX_UNDERFLOW:String;
}