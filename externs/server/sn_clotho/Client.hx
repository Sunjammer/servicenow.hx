package sn_clotho;

@:native("sn_clotho.Client") extern class Client {
	function new();
	/**
		Performs the specified transform(s) over the specified range
	**/
	function transform(o1:Dynamic, o2:GlideDateTime, o3:GlideDateTime):Dynamic;
	/**
		Uses the specified DataBuilder to put data into MetricBase
	**/
	function put(dataBuilder:DataBuilder):Void;
	static var prototype : Client;
}