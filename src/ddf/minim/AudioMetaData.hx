package ddf.minim;

#if !jvm private typedef Single = Float; #end

extern class AudioMetaData  {

	

	public function new():Void;
	
	
	public function album():String;
	
	public function author():String;
	
	public function comment():String;
	
	public function composer():String;
	
	public function copyright():String;
	
	public function date():String;
	
	public function disc():String;
	
	public function encoded():String;
	
	public function fileName():String;
	
	public function genre():String;
	
	public function length():Int;
	
	public function orchestra():String;
	
	public function publisher():String;
	
	public function title():String;
	
	public function track():Int;
	
	
}