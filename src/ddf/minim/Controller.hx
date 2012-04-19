package ddf.minim;

#if !java private typedef Single = Float; #end

extern class Controller  {

	/* The balance control type. */
	//static public var BALANCE:javax.sound.sampled.FloatControl.Type;
	/* The gain control type. */
	//static public var GAIN:javax.sound.sampled.FloatControl.Type;
	/* The mute control type. */
	//static public var MUTE:javax.sound.sampled.BooleanControl.Type;
	/* The pan control type. */
	//static public var PAN:javax.sound.sampled.FloatControl.Type;
	/* The sample rate control type. */
	//static public var SAMPLE_RATE:javax.sound.sampled.FloatControl.Type;
	/* The volume control type. */
	//static public var VOLUME:javax.sound.sampled.FloatControl.Type;

	/* Constructs a Controller for the given Line. */
	//public function new(cntrls:java.NativeArray<javax.sound.sampled.Control>):Void;
	
	
	/* Gets the balance control for the Line, if it exists. */
	//public function balance():javax.sound.sampled.FloatControl;
	
	/* Gets the gain control for the Line, if it exists. */
	//public function gain():javax.sound.sampled.FloatControl;
	
	/* Returns the current balance of the line. */
	public function getBalance():Single;
	
	//public function getControl(type:javax.sound.sampled.Control.Type):javax.sound.sampled.Control;
	
	/* Returns an array of all the available Controls for the DataLine being controlled. */
	//public function getControls():java.NativeArray<javax.sound.sampled.Control>;
	
	/* Returns the current gain. */
	public function getGain():Single;
	
	/* Returns the current pan value. */
	public function getPan():Single;
	
	/* Returns the current volume. */
	public function getVolume():Single;
	
	/* Returns whether or not the particular control type is supported by the Line being controlled. */
	//public function hasControl(type:javax.sound.sampled.Control.Type):Bool;
	
	/* Returns true if the line is muted. */
	public function isMuted():Bool;
	
	/* Mutes the line. */
	public function mute():Void;
	
	/* Gets the pan control for the Line, if it exists. */
	//public function pan():javax.sound.sampled.FloatControl;
	
	/* Prints the available controls and their ranges to the console. */
	public function printControls():Void;
	
	/* Sets the balance of the line to v. */
	public function setBalance(v:Single):Void;
	
	/* Sets the gain to v. */
	public function setGain(v:Single):Void;
	
	/* Sets the pan of the line to v. */
	public function setPan(v:Single):Void;
	
	/* Sets the volume to v. */
	public function setVolume(v:Single):Void;
	
	/* Shifts the value of the balance from from to to in the space of millis milliseconds. */
	public function shiftBalance(from:Single, to:Single, millis:Int):Void;
	
	/* Shifts the value of the gain from from to to in the space of millis */
	public function shiftGain(from:Single, to:Single, millis:Int):Void;
	
	/* Shifts the value of the pan from from to to in the space of millis milliseconds. */
	public function shiftPan(from:Single, to:Single, millis:Int):Void;
	
	/* Shifts the value of the volume from from to to in the space of millis milliseconds. */
	public function shiftVolume(from:Single, to:Single, millis:Int):Void;
	
	/* Unmutes the line. */
	public function unmute():Void;
	
	/* Gets the volume control for the Line, if it exists. */
	//public function volume():javax.sound.sampled.FloatControl;
	
	
}