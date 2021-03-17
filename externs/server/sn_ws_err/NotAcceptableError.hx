package sn_ws_err;

@:native("sn_ws_err.NotAcceptableError") extern class NotAcceptableError {
	function new(message:String);
	static var prototype : NotAcceptableError;
}