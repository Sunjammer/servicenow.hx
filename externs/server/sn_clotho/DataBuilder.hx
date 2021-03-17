package sn_clotho;

@:native("sn_clotho.DataBuilder") extern class DataBuilder {
	function new(cx:Dynamic, args:ts.Tuple1<Dynamic>, ctorObj:haxe.Constraints.Function, inNewExpr:Bool);
	/**
		Adds the specified value to the data at the specified time
	**/
	function add(start:GlideDateTime, value:Float):DataBuilder;
	static var prototype : DataBuilder;
}