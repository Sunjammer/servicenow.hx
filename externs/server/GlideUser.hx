package;

/**
	The Scoped GlideUser API provides access to information about the current user and current user roles. Using the Scoped GlideUser API avoids the need to use the slower GlideRecord queries to get user information
**/
@:native("GlideUser") extern class GlideUser {
	function new();
	/**
		Gets the user id, or login name, of the current user
	**/
	function getName():String;
	/**
		Gets the display name of the current user
	**/
	function getDisplayName():String;
	/**
		Gets the Company ID of the current user
	**/
	function getCompanyID():String;
	/**
		Determines if the current user has the specified role
	**/
	function hasRole(role:String):Dynamic;
	/**
		Gets the sys_id of current user
	**/
	function getID():String;
	/**
		Determines if the current user is a member of the specified group
	**/
	function isMemberOf(group:String):Dynamic;
	/**
		Saves a user preference value to the database
	**/
	function savePreference(name:String, value:String):Void;
	/**
		Gets the specified user preference value for the current user
	**/
	function getPreference(name:String):String;
	static var prototype : GlideUser;
}