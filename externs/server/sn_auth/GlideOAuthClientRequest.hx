package sn_auth;

@:native("sn_auth.GlideOAuthClientRequest") extern class GlideOAuthClientRequest {
	function new();
	/**
		Retrieves the refresh token
	**/
	function getRefreshToken():String;
	/**
		Sets the password with the string you provide
	**/
	function setPassword(password:String):Void;
	/**
		Retrieves the HTTP headers
	**/
	function getHeaders():Null<{ }>;
	/**
		Sets the HTTP headers for the nave:value pair that you provide
	**/
	function setHeader(name:String, value:String):Void;
	/**
		Retrieves the HTTP headers for the string you provide
	**/
	function getHeader(name:String):Void;
	/**
		Retrieves the password
	**/
	function getPassword():String;
	/**
		Sets the user name with the string you provide
	**/
	function setUserName(userName:String):Void;
	/**
		Sets the parameters for the name:value pair of strings you provide
	**/
	function setParameter(name:String, value:String):Void;
	/**
		Retrieves the grant type
	**/
	function getGrantType():Void;
	/**
		Sets the grant type with the string you provide
	**/
	function setGrantType():Void;
	/**
		Retrieves the user name
	**/
	function getUserName():String;
	/**
		Sets the scope with the string you provide
	**/
	function setScope(scope:String):Void;
	/**
		Sets the refresh token with the string you provide
	**/
	function setRefreshToken(refreshToken:String):Void;
	/**
		Retrieves the scope
	**/
	function getScope():String;
	/**
		Retrieves the parameter for the parameter name you provide
	**/
	function getParameter(name:String):Void;
	static var prototype : GlideOAuthClientRequest;
}