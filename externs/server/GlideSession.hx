package;

/**
	GlideSession manages all of the information for a user session. You can retrieve this from gs.getSession()
**/
@:native("GlideSession") extern class GlideSession {
	function new();
	/**
		Get the Time Zone name associated with the user
	**/
	function getTimeZoneName():String;
	/**
		Store a value in an active session
	**/
	function putClientData(name:String, value:String):Void;
	/**
		Language used by the user
	**/
	function getLanguage():String;
	/**
		Gets the current URI for the session
	**/
	function getUrlOnStack():String;
	/**
		Fetch the value in active session based on the name
	**/
	function getClientData(name:String):String;
	/**
		Checks if the current session is interactive
	**/
	function isInteractive():Dynamic;
	/**
		Gets the client IP address
	**/
	function getClientIP():String;
	/**
		Determines if the current user is currently logged in
	**/
	function isLoggedIn():Dynamic;
	/**
		Gets the ID of current application, defined as a user preference and set by the application picker
	**/
	function getCurrentApplicationId():String;
	static var prototype : GlideSession;
}