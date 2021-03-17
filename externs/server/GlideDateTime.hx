package;

/**
	The scoped GlideDateTime default constructor, instantiates a new GlideDateTime object with the current date and time in Greenwich Mean Time (GMT). Optional 'value' parameter with a date and time value in the UTC time zone specified with the format yyyy-MM-dd HH:mm:ss
**/
@:native("GlideDateTime") extern class GlideDateTime {
	function new(?value:Dynamic);
	/**
		Gets the day of the week stored by the GlideDateTime object, expressed in the user's time zone
	**/
	function getDayOfWeekLocalTime():Float;
	/**
		Returns true if the object's data time is before the input argument
	**/
	function before(object:GlideDateTime):Dynamic;
	/**
		Adds a specified number of weeks to the current GlideDateTime object, expressed in the UTC time zone
	**/
	function addWeeksUTC(amount:Float):Void;
	/**
		Sets the day of the month to a specified value in the user's time zone
	**/
	function getDaysInMonthLocalTime():Float;
	/**
		Sets the month stored by the GlideDateTime object to a specified value using the UTC time zone
	**/
	function setMonthUTC(month:Float):Void;
	/**
		Compares two GlideDateTime objects
	**/
	function compareTo(object:GlideDateTime):Float;
	/**
		Sets the date and time of the current object using an existing GlideDateTime object. This method is equivalent to instantiating a new object with a GlideDateTime parameter
	**/
	function setGlideDateTime(gdt:GlideDateTime):Void;
	/**
		Sets the month stored by the GlideDateTime object to a specified value using the current user's time zone
	**/
	function setMonthLocalTime(month:Float):Void;
	/**
		Gets the month stored by the GlideDateTime object, expressed in the current user's time zone
	**/
	function getMonthLocalTime():Float;
	/**
		Gets the date for the user's time zone
	**/
	function getLocalDate():GlideDate;
	/**
		Sets the year stored by the GlideDateTime object to a specified value using the UTC time zone
	**/
	function setYearUTC(year:Float):Void;
	/**
		Gets the day of the week stored by the GlideDateTime object, expressed in the UTC time zone
	**/
	function getDayOfWeekUTC():Float;
	/**
		Gets the number of the current week of the current year
	**/
	function getWeekOfYearUTC():Float;
	/**
		Sets the day of the month to a specified value in the local time zone
	**/
	function setDayOfMonthLocalTime(day:Float):Void;
	/**
		Adds a specified number of years to the current GlideDateTime object, expressed in the UTC time zone
	**/
	function addYearsUTC(amount:Float):Void;
	/**
		Returns true if the object's data time is on or after the input argument
	**/
	function onOrAfter(object:GlideDateTime):Dynamic;
	/**
		Adds a GlideTime object to the current GlideDateTime object
	**/
	function add(v:Dynamic):Void;
	/**
		Returns local time with internal time format
	**/
	function getInternalFormattedLocalTime():String;
	/**
		Gets the duration difference between two GlideDateTime values. Pass a single paramter which specifies milliseconds to subtract from the current GlideDateTime object
	**/
	function subtract(start:GlideDateTime, end:GlideDateTime):GlideDuration;
	/**
		Gets the number of the week stored by the GlideDateTime object, expressed in the user's time zone
	**/
	function getWeekOfYearLocalTime():Float;
	function getDisplayValueWithoutTZ():String;
	/**
		Sets a date and time value using the current user's display format and time zone. Also set an optional parameter 'format', to set date and time format
	**/
	function setDisplayValue(value:String, format:String):Void;
	/**
		Returns local time with user time format
	**/
	function getUserFormattedLocalTime():String;
	/**
		Gets the month stored by the GlideDateTime object, expressed in the UTC time zone
	**/
	function getMonthUTC():Float;
	/**
		Adds a specified number of seconds to the current GlideDateTime object
	**/
	function addSeconds(value:Float):Void;
	/**
		Gets the number of days in the month stored by the GlideDateTime object, expressed in the UTC time zone
	**/
	function getDaysInMonthUTC():Float;
	/**
		Returns a GlideTime object that represents the time portion of the GlideDateTime object in the user's time zone
	**/
	function getLocalTime():GlideTime;
	/**
		Adds a specified number of years to the current GlideDateTime object, expressed in the user's time zone
	**/
	function addYearsLocalTime(amount:Float):Void;
	/**
		Gets the year stored by the GlideDateTime object, expressed in the current user's time zone
	**/
	function getYearLocalTime():Float;
	/**
		Gets the day of the month stored by the GlideDateTime object, expressed in the UTC time zone
	**/
	function getDayOfMonthUTC():Float;
	/**
		Gets the number of milliseconds since January 1, 1970, 00:00:00 Greenwich Mean Time (GMT)
	**/
	function getNumericValue():Float;
	/**
		Returns a GlideTime object that represents the time portion of the GlideDateTime object
	**/
	function getTime():GlideTime;
	/**
		Determines if an object's time uses a daylight savings offset
	**/
	function isDST():Dynamic;
	/**
		Adds a specified number of months to the current GlideDateTime object, expressed in the UTC time zone
	**/
	function addMonthsUTC(amount:Float):Void;
	/**
		Adds a specified number of days to the current GlideDateTime object, expressed in the user's timezone
	**/
	function addDaysLocalTime(amount:Float):Void;
	/**
		Gets the amount of time that daylight savings time is offset
	**/
	function getDSTOffset():Float;
	function hashCode():Float;
	/**
		Adds a specified number of months to the current GlideDateTime object, expressed in the user's time zone
	**/
	function addMonthsLocalTime(amount:Float):Void;
	/**
		Gets the display value in the internal datetime format
	**/
	function getDisplayValueInternal():String;
	/**
		Gets the day of the month stored by the GlideDateTime object, expressed in the current user's time zone
	**/
	function getDayOfMonthLocalTime():Float;
	/**
		Gets the date in the system time zone
	**/
	function getDate():GlideDate;
	/**
		Returns true if the object's data time is after the input argument
	**/
	function after(object:GlideDateTime):Dynamic;
	/**
		Gets the current error message
	**/
	function getErrorMsg():String;
	function getTZOffset():Float;
	/**
		Sets a date and time value using the internal format and the current user's time zone
	**/
	function setDisplayValueInternal(value:String):Void;
	/**
		Returns true if the object's data time is on or before the input argument
	**/
	function onOrBefore(object:GlideDateTime):Dynamic;
	/**
		Sets the day of the month to a specified value in the UTC time zone
	**/
	function setDayOfMonthUTC(day:Float):Void;
	/**
		Determines if a value is a valid datetime
	**/
	function isValid():Dynamic;
	/**
		Determines if an object's date is set
	**/
	function hasDate():Dynamic;
	/**
		Sets the year stored by the GlideDateTime object to a specified value using the current user's time zone
	**/
	function setYearLocalTime(year:Float):Void;
	/**
		Sets a date and time value using the UTC time zone and the specified date and time format
	**/
	function setValueUTC(dt:String, format:String):Void;
	/**
		Gets a datetiime value in the same format as it is stored in the database
	**/
	function getValue():String;
	/**
		Gets the year stored by the GlideDateTime object, expressed in the UTC time zone
	**/
	function getYearUTC():Float;
	function equals(object:GlideDateTime):Dynamic;
	/**
		Gets the datetime in the current user's display format and time zone
	**/
	function getDisplayValue():String;
	/**
		Sets the date and time
	**/
	function setValue(value:Float):Void;
	/**
		Converts a datetime value to a string
	**/
	function toString():String;
	/**
		Adds a specified number of days to the current GlideDateTime object, expressed in the UTC time zone
	**/
	function addDaysUTC(amount:Float):Void;
	/**
		Adds a specified number of weeks to the current GlideDateTime object, expressed in the user's timezone
	**/
	function addWeeksLocalTime(amount:Float):Void;
	static var prototype : GlideDateTime;
}