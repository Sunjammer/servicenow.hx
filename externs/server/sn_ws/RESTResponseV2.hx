package sn_ws;

@:native("sn_ws.RESTResponseV2") extern class RESTResponseV2 {
	function new();
	/**
		Get the numeric HTTP status code returned by the REST provider
	**/
	function getStatusCode(name:String):Float;
	/**
		Deprecated -- use getAllHeaders instead
	**/
	function getHeaders():Dynamic;
	/**
		Set the amount of time the instance waits for the response
	**/
	function waitForResponse(timeoutSecs:Float):Void;
	/**
		Get the content of the REST response body
	**/
	function getBody():String;
	/**
		Get the numeric error code, if there was an error during the REST transaction
	**/
	function getErrorCode():Float;
	/**
		Get the error message if there was an error during the REST transaction
	**/
	function getQueryString():String;
	/**
		Get all headers returned in the REST response and the associated values
	**/
	function getAllHeaders():ts.Tuple1<Dynamic>;
	/**
		Indicate if there was an error during the REST transaction
	**/
	function haveError():Dynamic;
	/**
		Get the value for a specified header
	**/
	function getHeader(name:String):String;
	/**
		Get the query used for this request
	**/
	function getErrorMessage():String;
	static var prototype : RESTResponseV2;
}