package;

/**
	Interact with Service Portal utility functions.
**/
@:native("spUtil_proto") extern class SpUtil_proto {
	function new();
	/**
		Add an info message.
	**/
	function addInfoMessage(message:String):Void;
	/**
		Call widget on server with data.
	**/
	function get(scope:Dynamic, data:Dynamic):Void;
	/**
		Update data in the scope by getting it from the server.
	**/
	function update(scope:Dynamic):Void;
	static var prototype : SpUtil_proto;
}