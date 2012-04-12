package toxi.color;

#if !jvm
private typedef Single = Float;
#end

import jvm.NativeArray;

extern interface ReadonlyTColor {	
	public function toARGB():Int;
	public function toCMYKAArray(cmyka:NativeArray<Single>):NativeArray<Single>;
	public function toHex():String;
	public function toHSVAArray(hsva:NativeArray<Single>):NativeArray<Single>;
	public function toRGBAArray(rgba:NativeArray<Single>):NativeArray<Single>;
	public function toString():String;
	
	public function alpha():Single;
	public function black():Single;
	public function blue():Single;
	public function brightness():Single;
	public function cyan():Single;
	public function green():Single;
	public function hue():Single;
	public function luminance():Single;
	public function magenta():Single;
	public function red():Single;
	public function saturation():Single;
	public function yellow():Single;
	
	public function copy():TColor;
	public function distanceToCMYK(c:ReadonlyTColor):Single;
	public function distanceToHSV(c:ReadonlyTColor):Single;
	public function distanceToRGB(c:ReadonlyTColor):Single;
	public function getAnalog(theta:Single, delta:Single):TColor;
	public function getBlended(c:ReadonlyTColor, t:Single):TColor;
	public function getComplement():TColor;
	public function getDarkened(step:Single):TColor;
	public function getDesaturated(step:Single):TColor;
	public function getInverted():TColor;
	public function getLightened(step:Single):TColor;
	public function getRotatedRYB(theta:Single):TColor;
	public function getSaturated(step:Single):TColor;
	public function isBlack():Bool;
	public function isGrey():Bool;
	public function isPrimary():Bool;
	public function isWhite():Bool;
}
