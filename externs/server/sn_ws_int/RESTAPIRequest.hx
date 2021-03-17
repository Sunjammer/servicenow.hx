package sn_ws_int;

@:native("sn_ws_int.RESTAPIRequest") extern class RESTAPIRequest {
	function new();
	/**
		All headers from the request
	**/
	var headers : Dynamic;
	/**
		The variable path parameters passed in the request URI as an object
	**/
	var pathParams : Dynamic;
	/**
		The query parameters from the request as an object
	**/
	var queryParams : Dynamic;
	/**
		Get the query category (i.e. read replica category) from query parameter 'sysparm_query_category'
	**/
	function getRequestedQueryCategory():String;
	/**
		Obtain a set of media types that are common between what the client request accepts and what this service is able to produce
	**/
	function getSupportedResponseContentTypes():Dynamic;
	/**
		The body of the request
	**/
	var body : RESTAPIRequestBody;
	/**
		The entire query string from the request URI
	**/
	var queryString : String;
	/**
		The request URI, excluding domain information
	**/
	var uri : String;
	/**
		The entire request URL, including domain
	**/
	var url : String;
	/**
		Get the value of a specific header from the request
	**/
	function getHeader(headerName:String):String;
	static var prototype : RESTAPIRequest;
}