import processing.core.PApplet;

class Main extends PApplet {
	static var end = 400 * Math.PI;
	
	public function setup():Void {
		size(800, 600);
		frameRate(60);
		smooth();
	}
	
	public function draw():Void {
		if (frameCount > end) return;
		
		var i = frameCount/50.0;
		var len = Math.sin(i) * map(frameCount, 0, end, 400, 0);
		ellipse(400 + Math.sin(i) * len, 
				300 + Math.cos(i) * len, 
				Math.sin(i) * Math.sin(i) * map(frameCount, 0, end, 0, 400), 
				Math.cos(i*i) * Math.sin(i) * map(frameCount, 0, end, 0, 400));
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#ECE9D8";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
}