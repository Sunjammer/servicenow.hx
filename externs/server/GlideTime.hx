package;

/**
	The scoped GlideTime class provides methods for performing operations on GlideTime objects, such as instantiating GlideTime objects or working with GlideTime fields
**/
@:native("GlideTime") extern class GlideTime {
	function new();
	/**
		Gets the time in the given time format
	**/
	function getByFormat(format:String):String;
	/**
		Gets the duration difference between two GlideTime values
	**/
	function subtract(start:GlideTime, end:GlideTime):GlideDuration;
	/**
		Returns hour part of local time 0-11
	**/
	function getHourLocalTime():Float;
	/**
		Sets a time value using the current user's display format and time zone
	**/
	function setDisplayValue(asDisplayed:String):Void;
	/**
		Returns hour part of UTC time 0-11
	**/
	function getHourUTC():Float;
	/**
		Gets the time value stored in the database by the GlideTime object in the internal format, HH:mm:ss, and the system time zone, UTC by default
	**/
	function getValue():String;
	/**
		Returns minutes part of UTC time
	**/
	function getMinutesUTC():Float;
	/**
		Returns seconds part of time
	**/
	function getSeconds():Float;
	/**
		Gets the time in the current user's display format and time zone
	**/
	function getDisplayValue():String;
	/**
		Sets the time of the GlideTime object in the internal time zone, which is UTC by default or the value of the glide.sys.internal.tz property, if set
	**/
	function setValue(value:Dynamic):Void;
	/**
		Gets the display value in the current user's time zone and the internal format (HH:mm:ss). Useful for date/time fields, but not for date fields
	**/
	function getDisplayValueInternal():String;
	/**
		Returns hour-of-the-day part of local time 0-23
	**/
	function getHourOfDayLocalTime():Float;
	/**
		Returns the hour-of-the-day part of UTC time 0-23
	**/
	function getHourOfDayUTC():Float;
	/**
		Returns minutes part of local time
	**/
	function getMinutesLocalTime():Float;
	static var prototype : GlideTime;
}