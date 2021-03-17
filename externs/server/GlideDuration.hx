package;

/**
	The scoped GlideDuration class provides methods for working with spans of time or durations. GlideDuration objects store the duration as a date and time from January 1, 1970, 00:00:00. As a result, setValue() and getValue() use the GlideDateTime object for parameters and return values
**/
@:native("GlideDuration") extern class GlideDuration {
	/**
		function new(ms:Int);
		function new(other:GlideDuration);
		function new(displayValue:String);
	**/
	function new(?input:Any);
	/**
		Adds a given duration to the current duration
	**/
	function add(value:GlideDuration):GlideDuration;
	/**
		Gets the current duration in the given format
	**/
	function getByFormat(format:String):String;
	/**
		Gets internal value of the this duration object. GlidDuration is stored as DateTime
	**/
	function getValue():String;
	function subtract(value:GlideDuration):GlideDuration;
	/**
		Gets the display value of the duration in number of days, hours, and minutes
	**/
	function getDisplayValue():String;
	/**
		Sets the internal value of the GlideDuration object. Internally, GlidDuration is stored as DateTime
	**/
	function setValue(o:Dynamic):Void;
	/**
		Gets the number of days
	**/
	function getDayPart():Float;
	/**
		Sets the display value
	**/
	function setDisplayValue(asDisplayed:String):Void;
	/**
		Gets the rounded number of days. If the time part is more than 12 hours, the return value is rounded up. Otherwise, it is rounded down
	**/
	function getRoundedDayPart():Float;
	/**
		Gets the duration value in d HH:mm:ss format
	**/
	function getDurationValue():String;
	static var prototype : GlideDuration;
}