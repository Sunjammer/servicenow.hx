package;

/**
	The scoped GlideFilter class allows you to determine if a record meets a specified set of requirements. There is no constructor for scoped GlideFilter, it is accessed by using the global object 'GlideFilter'
**/
@:native("GlideFilter") extern class GlideFilter {
	function new();
	static var prototype : GlideFilter;
}