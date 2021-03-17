package;

/**
	The scoped QueryCondition API provides additional AND or OR conditions that can be added to the current condition, allowing you to build complex queries such as: category='hardware' OR category='software' AND priority='2' AND priority='1'
**/
@:native("GlideQueryCondition") extern class GlideQueryCondition {
	function new();
	/**
		Adds an OR condition to the current condition. oper is an optional parameter
	**/
	function addOrCondition(name:String, oper:String, value:Dynamic):GlideQueryCondition;
	/**
		Adds an AND condition to the current condition. oper is an optional parameter
	**/
	function addCondition(name:String, oper:String, value:Dynamic):GlideQueryCondition;
	static var prototype : GlideQueryCondition;
}