package sn_auth;

@:native("sn_auth.GlideOAuthToken") extern class GlideOAuthToken {
	function new();
	/**
		Retrieves the refresh token
	**/
	function getRefreshToken():Float;
	/**
		Retrieves the sys_id of the refresh token
	**/
	function getRefreshTokenSysID():String;
	/**
		Retrieves the lifespan of the access token in seconds
	**/
	function getExpiresIn():Float;
	/**
		Retrieves the sys_id of the token ID
	**/
	function getAccessTokenSysID():String;
	/**
		Retrieves the scope, which is the amount of access granted by the access token
	**/
	function getScope():String;
	/**
		Retrieves the access token
	**/
	function getAccessToken():String;
	static var prototype : GlideOAuthToken;
}