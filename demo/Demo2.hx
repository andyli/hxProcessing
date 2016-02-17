package;

import processing.core.*;
import processing.core.PConstants.PConstants_Statics.*;
import toxi.geom.*;
using toxi.color.TColor;
using Std;

#if !java
private typedef Single = Float;
#end

class Block {
	public var rect:Rect;
	public var color:TColor;
	public var population:Single;
	
	public function new():Void {
	
	}
	
	public function draw(p:PApplet):Void {
		p.fill(color.red() * 255, color.green() * 255, color.blue() * 255, color.alpha() * 255);
		p.rect(rect.x, rect.y, rect.width, rect.height);
	}
}

@:nativegen
class Demo2 extends PApplet {
	var theta:Float;
	var blocks:Array<Array<Block>>;
	var tree:PImage;

	inline public static function randomIntegerWithinRange(min:Int, max:Int):Int {
		return Math.floor(Math.random() * (1 + max - min) + min);
	}
	inline public static function randomWithinRange(min:Float, max:Float):Float {
		return min + (Math.random() * (max - min));
	}
	inline public static function isBetween(v:Float, min:Float, max:Float):Bool {
		return v > min && v < max;
	}

	@:overload override public function settings():Void {
		size(800, 600, JAVA2D);
	}
	
	@:overload override function setup():Void {
		background(0, 0, 0);
		frameRate(30);
		smooth();
		
		var block = new Block();
		block.rect = new Rect(0, 0, width, height);
		block.color = TColor.newRGBA(0.2, 0.2, 1, 1);
		block.population = 0.9;
		
		blocks = [[block]];
		branch([block]);
		
		tree = loadImage("MeteorRepository1Icons_0_tree.png");
		
		noStroke();
		for (blockLayer in blocks) {
			for (block in blockLayer) {
				block.draw(this);
			}
		}
		
		filter(BLUR, 6);
		filter(POSTERIZE, 4);
		
		loadPixels();
		for(i in 0...35) {
			var pt;
			do {
				pt = new Vec2D(randomIntegerWithinRange(5, width-22), randomIntegerWithinRange(5, height-22));
			} while (checkPtIsLand(pt));
			
			do {
				pt.addSelf(new Vec2D(10 * randomIntegerWithinRange(-2, 2), 10 * randomIntegerWithinRange(-2, 2)));
			} while (checkPtIsLand(pt) && Math.random() < 0.8);
			
			image(tree, pt.x(), pt.y(), 16, 16);
		}
	}
	
	function idx(pt:Vec2D):Int {
		return (pt.x() + pt.y() * width).int();
	}
	
	function checkPtIsLand(pt:Vec2D):Bool {
		return	!isBetween(pt.x(), 5, width-22) ||
				!isBetween(pt.y(), 5, height-22) || 
				!isBetween(pixels[idx(pt.add(new Vec2D(-5, -5)))].newARGB().hue(),0.2,0.3) ||
				!isBetween(pixels[idx(pt.add(new Vec2D(21, -5)))].newARGB().hue(),0.2,0.3) ||
				!isBetween(pixels[idx(pt.add(new Vec2D(21, 21)))].newARGB().hue(),0.2,0.3) ||
				!isBetween(pixels[idx(pt.add(new Vec2D(-5, 21)))].newARGB().hue(),0.2,0.3);
	}
	
	@:overload override function draw():Void {
		
	}
	
	function branch(pBlockLayer:Array<Block>, i:Single = 1):Void {
		if (i > 3) return;
		
		var blockLayer = new Array<Block>();
		for (b in 0...pBlockLayer.length) {
			var pBlock = pBlockLayer[b];
			
			var gapX = pBlock.rect.width * (1.0 / i);
			var gapY = pBlock.rect.height * (1.0 / i);
			
			var divOpt = [3, 5, 7];
			var div = divOpt[randomIntegerWithinRange(0, divOpt.length-1)];
			for (i in 0...div)
			for (j in 0...div)
			{
				if (Math.random() > pBlock.population) continue;
				
				var nX = pBlock.rect.width / div * i;
				var nY = pBlock.rect.height / div * j;
				
				var nBlock = new Block();
				nBlock.rect = pBlock.rect
					.copy()
					.scale(1.0 / div)
					.setPosition(new Vec2D(
						cast pBlock.rect.getLeft() + nX, 
						cast pBlock.rect.getTop() + nY
					));
				nBlock.color = Math.random() < 0.5 ? pBlock.color : TColor.newRGBA(0.3, 0.6, 0.2, 1);
				nBlock.population = pBlock.population * randomWithinRange(0.6, 0.8);
				blockLayer.push(nBlock);
			}
		}
		blocks.push(blockLayer);
		
		branch(blockLayer, ++i);
	}
	
	@:overload override function mousePressed():Void {
		setup();
	}
	
	static function main():Void {
		var args = new java.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "haxe.root.Demo2";
		PApplet.main(args);
	}
}