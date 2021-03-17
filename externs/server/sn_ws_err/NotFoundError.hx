package sn_ws_err;

@:native("sn_ws_err.NotFoundError") extern class NotFoundError {
	function new(message:String);
	static var prototype : NotFoundError;
}