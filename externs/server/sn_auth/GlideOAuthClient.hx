package sn_auth;

@:native("sn_auth.GlideOAuthClient") extern class GlideOAuthClient {
	function new();
	/**
		Revokes the access or refresh token for the client, with the request and optional header parameters set into a GlideOAuthClientRequest object
	**/
	function revokeToken(clientName:String, accessToken:String, refreshToken:String, request:GlideOAuthClientRequest):GlideOAuthClientResponse;
	/**
		Retrieves the token for the client, with the request and optional header parameters set into a GlideOAuthClientRequest object
	**/
	function requestTokenByRequest(clientName:String, request:GlideOAuthClientRequest):GlideOAuthClientResponse;
	/**
		Retrieves the token for the client, with the request parameters encoded in JSON format
	**/
	function requestToken(clientName:String, jsonString:String):GlideOAuthClientResponse;
	static var prototype : GlideOAuthClient;
}