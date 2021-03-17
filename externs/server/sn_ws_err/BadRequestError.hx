package sn_ws_err;

@:native("sn_ws_err.BadRequestError") extern class BadRequestError {
	function new(message:String);
	static var prototype : BadRequestError;
}