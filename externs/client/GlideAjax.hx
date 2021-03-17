package;

/**
	The GlideAjax class allows the execution of server-side code from the client. Initialize GlideAjax with the name of the client callable Script Include that extends AbstractAjaxProcessor
**/
@:native("GlideAjax") extern class GlideAjax {
	function new(scriptIncludeName:String);
	/**
		Adds parameters to the request, which are read in the Script Include. sysparm_name parameter is used to invoke a function in Script Include
	**/
	function addParam(name:String, value:String):Void;
	/**
		Makes an asynchronous call to the server. On completion, invokes callback function with response object as an argument
	**/
	function getXML(callBackFunction:String):Void;
	/**
		Makes an asynchronous call to the server. On completion, invokes callback function with 'answer' value extracted from response object as an argument
	**/
	function getXMLAnswer(callbackFunction:String, additionalParams:Dynamic, responseParams:Dynamic):Void;
	static var prototype : GlideAjax;
}