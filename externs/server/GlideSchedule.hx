package;

/**
	The scoped GlideSchedule API provides methods for performing operations on GlideSchedule objects, such as adding new schedule segments to a schedule, determining if a datetime is within the schedule, or setting the schedule timezone
**/
@:native("GlideSchedule") extern class GlideSchedule {
	function new();
	/**
		Adds a new schedule segment to the current schedule
	**/
	function add(startDate:GlideDateTime, offset:GlideDuration):GlideDateTime;
	/**
		Determines the elapsed time in the schedule between two date time values using the timezone of the schedule or, if that is not specified, the timezone of the session
	**/
	function duration(startDate:GlideDateTime, endDate:GlideDateTime):GlideDuration;
	/**
		Gets the current schedule name
	**/
	function getName():String;
	/**
		Loads a schedule with the schedule information. If a timezone is not specified or is nil, the current session timezone is used for the schedule
	**/
	function load(sysID:String, timeZone:String, excludeSpanID:String):Void;
	/**
		Determines if the current schedule is valid. A schedule is valid if it has at least one schedule span
	**/
	function isValid():Dynamic;
	/**
		Sets the timezone for the current schedule
	**/
	function setTimeZone(tz:String):Void;
	static var prototype : GlideSchedule;
}