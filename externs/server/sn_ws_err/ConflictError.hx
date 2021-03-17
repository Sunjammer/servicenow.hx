package sn_ws_err;

@:native("sn_ws_err.ConflictError") extern class ConflictError {
	function new(message:String);
	static var prototype : ConflictError;
}