package sn_ws_err;

@:native("sn_ws_err.ServiceError") extern class ServiceError {
	function new();
	/**
		The detailed error message
	**/
	function setDetail(detail:String):Void;
	/**
		The error message
	**/
	function setMessage(message:String):Void;
	/**
		The response status code -- defaults to 500
	**/
	function setStatus(code:Float):Void;
	static var prototype : ServiceError;
}