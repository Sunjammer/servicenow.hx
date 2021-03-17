package;

/**
	Navigation API. Note: The code in this file is compatible with API Level 1 and API Level 2
**/
@:native("g_navigation_proto") extern class G_navigation_proto {
	function new();
	/**
		Redirects to a record
	**/
	function openRecord(table:String, sys_id:String):Void;
	/**
		Reload the current frame
	**/
	function reloadWindow():Void;
	/**
		Open a popup window with features \nurl: The url to open \nname: The name of the new window \nfeatures: is a comma separated list of features. See https://developer.mozilla.org/en-US/docs/Web/API/Window/open \nnoStack: True to append sysparm_stack=no to the url. This prevents weirdness when using the form back button \nreturns the instance of newly opened Window
	**/
	function openPopup(url:String, name:String, features:String, noStack:Dynamic):Null<{ }>;
	/**
		Refresh the navigator contents
	**/
	function refreshNavigator():Void;
	/**
		Redirects to another URL. \nurl: URL to be loaded. It can be any URL supported by the browser \ntarget: is the target frame. If left blank, the URL will load in the current frame
	**/
	function open(url:String, target:String):Void;
	static var prototype : G_navigation_proto;
}