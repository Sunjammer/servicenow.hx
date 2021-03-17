package;

/**
	The scoped GlideDate class provides methods for performing operations on GlideDate objects, such as instantiating GlideDate objects or working with GlideDate fields
**/
@:native("GlideDate") extern class GlideDate {
	function new();
	/**
		Gets the date in the given date format
	**/
	function getByFormat(format:String):String;
	/**
		Returns the month part of a date with no timezone conversion
	**/
	function getMonthNoTZ():Float;
	/**
		Gets the date value stored in the database by the GlideDate object in the internal format, yyyy-MM-dd, and the system time zone, UTC by default
	**/
	function getValue():String;
	/**
		Returns the year part of a date with no timezone conversion
	**/
	function getYearNoTZ():Float;
	/**
		Gets the duration difference between two GlideDate values
	**/
	function subtract(start:GlideDate, end:GlideDate):GlideDuration;
	/**
		Gets the date in the current user's display format and time zone
	**/
	function getDisplayValue():String;
	/**
		Sets the date of the GlideDate object
	**/
	function setValue(o:Dynamic):Void;
	/**
		Gets the display value in the internal format (yyyy-MM-dd). Note: This method is useful for date or time fields, but not date fields
	**/
	function getDisplayValueInternal():String;
	/**
		Returns the day part of a date with no timezone conversion
	**/
	function getDayOfMonthNoTZ():Float;
	/**
		Sets a date value using the current user's display format and time zone
	**/
	function setDisplayValue(asDisplayed:String):Void;
	static var prototype : GlideDate;
}