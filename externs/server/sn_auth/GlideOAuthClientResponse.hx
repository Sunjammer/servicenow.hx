package sn_auth;

@:native("sn_auth.GlideOAuthClientResponse") extern class GlideOAuthClientResponse {
	function new();
	/**
		Retrieves the response content from an external OAuth provider. The response is in a name:value pair
	**/
	function getResponseParameters():Null<{ }>;
	/**
		Retrieves all of the response information, including instance information
	**/
	function getBody():String;
	/**
		Retrieves the refresh token
	**/
	function getToken():GlideOAuthToken;
	/**
		Retrieves the HTTP response code from the external OAuth provider
	**/
	function getResponseCode():String;
	/**
		Retrieves the HTTP response content header from an external OAuth provider
	**/
	function getContentType():String;
	/**
		Retrieves the error message if authentication is not successful
	**/
	function getErrorMessage():String;
	static var prototype : GlideOAuthClientResponse;
}