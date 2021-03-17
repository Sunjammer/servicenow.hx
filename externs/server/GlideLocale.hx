package;

/**
	GlideLocale is a global object that can be called in scripts. Use the get() method to get a GlideLocale object
**/
@:native("GlideLocale") extern class GlideLocale {
	function new();
	/**
		Returns the decimal separator
	**/
	function getGroupingSeparator():String;
	/**
		Returns the grouping separator
	**/
	function getDecimalSeparator():String;
	static var prototype : GlideLocale;
}