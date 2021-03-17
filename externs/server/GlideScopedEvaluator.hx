package;

/**
	The API allows you to evaluate scripts from a GlideRecord field
**/
@:native("GlideScopedEvaluator") extern class GlideScopedEvaluator {
	function new();
	/**
		Evaluates a script from a GlideRecord field. variables parameter is optional
	**/
	function evaluateScript(gr:GlideRecord, scriptField:String, ?variables:Dynamic):Null<{ }>;
	/**
		Puts a variable into the GlideScopedEvaluator object
	**/
	function putVariable(name:String, value:Dynamic):Void;
	/**
		Gets a variable from a GlideScopedEvaluator object
	**/
	function getVariable(name:String):Null<{ }>;
	static var prototype : GlideScopedEvaluator;
}