package;

/**
	The scoped GlideSystem (referred to by the variable name 'gs' in any server-side JavaScript) API provides a number of convenient methods to get information about the system, the current logged in user, etc.
**/
@:native("GlideSystem") extern class GlideSystem {
	function new();
	/**
		Returns the (UTC) start of the quarter that was the specified number of months ago adjusted for the timezone of the server
	**/
	function monthsAgo(month:Float):String;
	/**
		Returns the (UTC) end of the hour that was the specified number of hours ago adjusted for the timezone of the server
	**/
	function hoursAgoEnd(hours:Float):String;
	/**
		Gets the date and time for the end of this month in UTC, adjusted for the timezone of the server
	**/
	function endOfThisMonth():String;
	/**
		Checks if the current session is interactive
	**/
	function isInteractive():Dynamic;
	/**
		Returns the (UTC) end of the day that was the specified number of days ago adjusted for the timezone of the server
	**/
	function daysAgoEnd(daysAgo:Float):String;
	/**
		Gets the date and time for the beginning of next month in UTC, adjusted for the timezone of the server
	**/
	function beginningOfNextMonth():String;
	/**
		number of hours ago
	**/
	function hoursAgo(hours:Float):String;
	/**
		Returns the (UTC) end of the quarter that was the specified number of quarters ago adjusted for the timezone of the server
	**/
	function quartersAgoEnd(quarters:Float):String;
	/**
		Gets the date and time for the beginning of this year in UTC, adjusted for the timezone of the server
	**/
	function beginningOfThisYear():String;
	/**
		Gets the ID of current application, defined as a user preference and set by the application picker
	**/
	function getCurrentApplicationId():String;
	/**
		Gets the date and time for the end of last year in UTC, adjusted for the timezone of the server
	**/
	function endOfLastYear():String;
	/**
		Gets the date and time for the end of next year in UTC, adjusted for the timezone of the server
	**/
	function endOfNextYear():String;
	/**
		Queries an object and returns true if the object is null, undefined, or contains an empty string
	**/
	function nil(o:Dynamic):Dynamic;
	/**
		Gets the date and time for the beginning of this quarter in UTC, adjusted for the timezone of the server
	**/
	function beginningOfThisQuarter():String;
	/**
		Determines if debugging is active for a specific scope
	**/
	function isDebugging():Dynamic;
	/**
		Set the redirect URI for this transaction. This determines the next page the user will see
	**/
	function setRedirect(url:String):Void;
	/**
		Returns a String of the form :interval,value,operator
	**/
	function datePart(interval:String, value:String, operator_:String):String;
	/**
		Generates a GUID that can be used when a unique identifier is required
	**/
	function generateGUID(obj:Dynamic):String;
	function getNewAppScopeCompanyPrefix():String;
	/**
		Gets the username, or User ID, of the current user (e.g., abel.tuter)
	**/
	function getUserName():String;
	/**
		Uses the info level to log a message to the system log
	**/
	function info(message:String, parm1:Dynamic, parm2:Dynamic, parm3:Dynamic, parm4:Dynamic, parm5:Dynamic):Void;
	function base64Encode(s:String):String;
	/**
		Gets the current URI for the session
	**/
	function getUrlOnStack():String;
	/**
		Returns the (UTC) start of the quarter that was the specified number of months ago adjusted for the timezone of the server
	**/
	function monthsAgoStart(month:Float):String;
	/**
		Gets a string representing the cache version for a CSS file
	**/
	function getCssCacheVersionString():String;
	/**
		Gets the caller scope name, or returns null if there is no caller
	**/
	function getCallerScopeName():String;
	function base64Decode(s:String):String;
	/**
		number of minutes ago
	**/
	function minutesAgo(minutes:Float):String;
	/**
		Returns the (UTC) start of the hour that was the specified number of hours ago adjusted for the timezone of the server
	**/
	function hoursAgoStart(hours:Float):String;
	/**
		Uses the warn level to log a message to the system log
	**/
	function warn(message:String, parm1:Dynamic, parm2:Dynamic, parm3:Dynamic, parm4:Dynamic, parm5:Dynamic):Void;
	/**
		Returns the (UTC) end of next week adjusted for the timezone of the server
	**/
	function endOfNextWeek():String;
	/**
		Gets the date and time for the beginning of last week in UTC, adjusted for the timezone of the server
	**/
	function beginningOfLastWeek():String;
	/**
		Determines if the current user has the specified role
	**/
	function hasRole(role:String):Dynamic;
	/**
		Determines if the current user is currently logged in
	**/
	function isLoggedIn():Dynamic;
	/**
		Gets the date and time for the end of this week in UTC, adjusted for the timezone of the server
	**/
	function endOfThisWeek():String;
	/**
		Gets the display name of the current user (e.g., Abel Tuter, as opposed to abel.tuter)
	**/
	function getUserDisplayName():String;
	/**
		Gets the date and time for the beginning of this week in UTC, adjusted for the timezone of the server
	**/
	function beginningOfThisWeek():String;
	/**
		Returns a reference to the GlideUser object for the current user
	**/
	function getUser():GlideUser;
	function urlDecode(url:String):String;
	/**
		Gets the date and time for the beginning of last year in UTC, adjusted for the timezone of the server
	**/
	function beginningOfLastYear():String;
	/**
		Determines if a database table exists
	**/
	function tableExists(name:String):Dynamic;
	/**
		Uses the error level to log a message to the system log
	**/
	function error(message:String, parm1:Dynamic, parm2:Dynamic, parm3:Dynamic, parm4:Dynamic, parm5:Dynamic):Void;
	function urlEncode(url:String):String;
	/**
		Gets the date and time for the end of this year in UTC, adjusted for the timezone of the server
	**/
	function endOfThisYear():String;
	/**
		Gets the name of the current scope
	**/
	function getCurrentScopeName():String;
	/**
		Returns (UTC) 24 hours ago adjusted for the timezone of the current session
	**/
	function yesterday():String;
	/**
		Returns the (UTC) start of the day that was the specified number of days ago adjusted for the timezone of the server
	**/
	function daysAgoStart(daysAgo:Float):String;
	/**
		Gets the date and time for the beginning of last month in UTC, adjusted for the timezone of the server
	**/
	function beginningOfLastMonth():String;
	/**
		Gets the date and time for the beginning of this month in UTC, adjusted for the timezone of the server
	**/
	function beginningOfThisMonth():String;
	/**
		Gets the date and time for the beginning of next year in UTC, adjusted for the timezone of the server
	**/
	function beginningOfNextYear():String;
	/**
		Returns the date of the duration time after January 1
	**/
	function getDurationDate(duration:String):String;
	/**
		Adds an error message for the current session
	**/
	function addErrorMessage(message:String):Void;
	/**
		Returns the (UTC) beginning of the specified week adjusted for the timezone of the current session
	**/
	function beginningOfWeek(o:Dynamic):String;
	/**
		Returns the (UTC) end of the minute that was the specified number of minutes ago adjusted for the timezone of the serve
	**/
	function minutesAgoEnd(minutes:Float):String;
	/**
		Gets the GlideSession Session ID
	**/
	function getSessionID():String;
	/**
		Gets the date and time for the end of next month in UTC, adjusted for the timezone of the server
	**/
	function endOfNextMonth():String;
	/**
		Gets the sys_id of the current user
	**/
	function getUserID():String;
	/**
		Provides a safe way to call from the sandbox, allowing only trusted scripts to be included
	**/
	function include(name:String):Dynamic;
	/**
		Returns the (UTC) start of the day that was the specified number of days ago adjusted for the timezone of the server
	**/
	function daysAgo(days:Float):String;
	/**
		Returns the (UTC) start of the minute that was the specified number of minutes ago adjusted for the timezone of the serve
	**/
	function minutesAgoStart(minutes:Float):String;
	/**
		Retrieves a message from UI messages
	**/
	function getProperty(key:String, alt:Dynamic):String;
	/**
		Returns the (UTC) end of the specified week adjusted for the timezone of the current session
	**/
	function endOfWeek(o:Dynamic):String;
	/**
		Gets the date and time for the end of last month in UTC, adjusted for the timezone of the server
	**/
	function endOfLastMonth():String;
	/**
		Uses the debug level to log a message to the system log
	**/
	function debug(message:String, parm1:Dynamic, parm2:Dynamic, parm3:Dynamic, parm4:Dynamic, parm5:Dynamic):Void;
	/**
		Retrieves a message from UI messages. args is an optional paramter
	**/
	function getMessage(id:String, args:Dynamic):String;
	/**
		Gets the date and time for the end of this quarter in UTC, adjusted for the timezone of the server
	**/
	function endOfThisQuarter():String;
	/**
		Queues an event for the event manager
	**/
	function eventQueue(name:String, record:GlideRecord, parm1:String, parm2:String, queue:String):Void;
	function xmlToJSON(xmlString:String):Dynamic;
	/**
		Adds an info message for the current session
	**/
	function addInfoMessage(message:String):Void;
	/**
		Gets the date and time for the beginning of next week in UTC, adjusted for the timezone of the server
	**/
	function beginningOfNextWeek():String;
	function getMaxSchemaNameLength():Float;
	/**
		Returns the (UTC) end of last week adjusted for the timezone of the server
	**/
	function endOfLastWeek():String;
	/**
		Returns the (UTC) start of the quarter that was the specified number of quarters ago adjusted for the timezone of the server
	**/
	function quartersAgoStart(quarters:Float):String;
	/**
		Gets a reference to the current Glide session
	**/
	function getSession():GlideSession;
	static var prototype : GlideSystem;
}