package sn_ws_int;

@:native("sn_ws_int.RESTAPIResponse") extern class RESTAPIResponse {
	function new();
	/**
		Set response headers from the specified object
	**/
	function setHeaders(headers:Dynamic):Void;
	/**
		Return stream writer. Caller responsible to set proper content type and status using setStatus and setHeader methods. Caller responsible to populate all headers on response before actually writing to stream
	**/
	function getStreamWriter():RESTAPIResponseStream;
	/**
		Set the Location header
	**/
	function setLocation(locationValue:String):Void;
	/**
		Set Response Error
	**/
	function setError(error:Dynamic):Void;
	/**
		Set the Content-Type header
	**/
	function setContentType(contentType:String):Void;
	/**
		Use the specified object as the response body
	**/
	function setBody(body:Dynamic):Void;
	/**
		Set response HTTP status code
	**/
	function setStatus(code:Float):Void;
	/**
		Set a response header
	**/
	function setHeader(name:String, value:String):Void;
	static var prototype : RESTAPIResponse;
}