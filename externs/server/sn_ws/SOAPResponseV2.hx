package sn_ws;

@:native("sn_ws.SOAPResponseV2") extern class SOAPResponseV2 {
	function new();
	/**
		Get the numeric HTTP status code returned by the SOAP provider
	**/
	function getStatusCode():Float;
	/**
		Deprecated -- use getAllHeaders instead
	**/
	function getHeaders():Dynamic;
	/**
		Set the amount of time the instance waits for a response
	**/
	function waitForResponse(timeoutSecs:Float):Void;
	/**
		Get the content of the SOAP response body
	**/
	function getBody():String;
	/**
		Get the numeric error code if there was an error during the SOAP transaction
	**/
	function getErrorCode():Float;
	/**
		Get all HTTP headers returned in the SOAP response and the associated values
	**/
	function getAllHeaders():ts.Tuple1<Dynamic>;
	/**
		Indicate if there was an error during the SOAP transaction
	**/
	function haveError():Dynamic;
	/**
		Get the value for a specified HTTP header
	**/
	function getHeader(name:String):String;
	/**
		Get the error message if there was an error during the SOAP transaction
	**/
	function getErrorMessage():String;
	static var prototype : SOAPResponseV2;
}