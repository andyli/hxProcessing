package;

import processing.core.PApplet;
import processing.core.PConstants;
import processing.core.PColor;
import processing.core.PFont;
import processing.core.PVector;
import processing.core.PImage;
import toxi.geom.Vec2D;
import toxi.geom.Rect;
import toxi.color.TColor;
using toxi.color.TColor;
import org.casalib.util.NumberUtil;
using org.casalib.util.NumberUtil;
using Std;

#if !jvm
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
 
class Demo2 extends PApplet {
	var theta:Float;
	var blocks:Array<Array<Block>>;
	var tree:PImage;
	
	override function setup():Void {
		background(0, 0, 0);
		frameRate(30);
		size(800, 600, PConstants.JAVA2D);
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
		
		filter(PConstants.BLUR, 6);
		filter(PConstants.POSTERIZE, 4);
		
		loadPixels();
		for(i in 0...35) {
			var pt;
			do {
				pt = new Vec2D(NumberUtil.randomIntegerWithinRange(5, width-22), NumberUtil.randomIntegerWithinRange(5, height-22));
			} while (checkPtIsLand(pt));
			
			do {
				pt.addSelf(new Vec2D(10 * NumberUtil.randomIntegerWithinRange(-2, 2), 10 * NumberUtil.randomIntegerWithinRange(-2, 2)));
			} while (checkPtIsLand(pt) && Math.random() < 0.8);
			
			image(tree, pt.x(), pt.y(), 16, 16);
		}
	}
	
	function idx(pt:Vec2D):Int {
		return (pt.x() + pt.y() * width).int();
	}
	
	function checkPtIsLand(pt:Vec2D):Bool {
		return	!pt.x().isBetween(5, width-22) ||
				!pt.y().isBetween(5, height-22) || 
				!pixels[idx(pt.add(new Vec2D(-5, -5)))].newARGB().hue().isBetween(0.2,0.3) ||
				!pixels[idx(pt.add(new Vec2D(21, -5)))].newARGB().hue().isBetween(0.2,0.3) ||
				!pixels[idx(pt.add(new Vec2D(21, 21)))].newARGB().hue().isBetween(0.2,0.3) ||
				!pixels[idx(pt.add(new Vec2D(-5, 21)))].newARGB().hue().isBetween(0.2,0.3);
	}
	
	override function draw():Void {
		
	}
	
	function branch(pBlockLayer:Array<Block>, i:Single = 1):Void {
		if (i > 3) return;
		
		var blockLayer = new Array<Block>();
		for (b in 0...pBlockLayer.length) {
			var pBlock = pBlockLayer[b];
			
			var gapX = pBlock.rect.width * (1.0 / i);
			var gapY = pBlock.rect.height * (1.0 / i);
			
			var divOpt = [3, 5, 7];
			var div = divOpt[NumberUtil.randomIntegerWithinRange(0, divOpt.length-1)];
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
				nBlock.population = pBlock.population * NumberUtil.randomWithinRange(0.6, 0.8);
				blockLayer.push(nBlock);
			}
		}
		blocks.push(blockLayer);
		
		branch(blockLayer, ++i);
	}
	
	override function mousePressed():Void {
		setup();
	}
	
	static function main():Void {
		var args = new jvm.NativeArray<String>(2);
		args[0] = "--bgcolor=#000000";
		args[1] = "hxProcessing";
		PApplet.main(args);
	}
}