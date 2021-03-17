package sn_ws_int;

@:native("sn_ws_int.RESTAPIResponseStream") extern class RESTAPIResponseStream {
	function new();
	/**
		Write an InputStream directly to the response stream. Can be called multiple times. Caller responsible for response format and setting proper Content-Type and status code prior to calling
	**/
	function writeStream(inputStream:Dynamic):Void;
	/**
		Write a string directly to the response stream. Can be called multiple times. Caller responsible for response format and setting proper Content-Type and status code prior to calling
	**/
	function writeString(stringToWrite:String):Void;
	static var prototype : RESTAPIResponseStream;
}