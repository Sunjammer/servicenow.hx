package;

/**
	ServiceNow processors are equivalent to Java servlets. Processors provide a customizable URL endpoint that can execute arbitrary server-side Javascript code and produce output such as TEXT, JSON, or HTML. The GlideScriptedProcessor APIs are used in processor scripts to access the the processor (servlet) capabilities. There are no constructors for the GlideScriptedProcessor APIs. The methods are called using the global variable g_processor. A useful global variable, g_target, is available in processor scripts. It contains the table name extracted from the URL. The URL to a processor has the format: https://<instance name.servicenow.com>/<path endpoint>.do?<parameter endpoint>=<value> where the path endpoint and parameter endpoint are defined on the processor form
**/
@:native("GlideScriptedProcessor") extern class GlideScriptedProcessor {
	function new();
	/**
		Redirects to the specified URL
	**/
	function redirect(url:String):Void;
	/**
		Writes the contents of the given string to the response
	**/
	function writeOutput(contentType:String, value:String):Void;
	/**
		Writes a JSON object to the current URL. Note: Works only in scoped apps
	**/
	function writeJSON(jsonObject:Dynamic):Void;
	static var prototype : GlideScriptedProcessor;
}