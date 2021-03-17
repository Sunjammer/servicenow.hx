package sn_ws_int;

@:native("sn_ws_int.WSResponse") extern class WSResponse {
	function new();
	/**
		Use this variable to assign a response value as a DOM Element
	**/
	var soapResponseElement : Dynamic;
	static var prototype : WSResponse;
}