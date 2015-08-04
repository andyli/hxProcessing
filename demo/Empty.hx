package;

import processing.core.*;
import processing.core.PConstants.PConstants_Statics.*;

@:nativegen
class Empty extends PApplet {
	@:overload override function setup():Void {
		trace("started successfully :) will exit in 5 seconds");
		haxe.Timer.delay(function() Sys.exit(0), 5000);
	}

	@:overload override function draw():Void {
		
	}
	
	static function main():Void {
		var args = new java.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "haxe.root.Empty";
		PApplet.main(args);
	}
}