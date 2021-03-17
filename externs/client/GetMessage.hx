package;

/**
	Retrieves a message from UI Messages
**/
@:native("getMessage") extern class GetMessage {
	function new(key:String);
	static var prototype : GetMessage;
}