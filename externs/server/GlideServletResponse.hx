package;

/**
	ServiceNow processors are equivalent to Java servlets. Processors provide a customizable URL endpoint that can execute arbitrary server-side Javascript code and produce output such as TEXT, JSON, or HTML. The GlideServletResponse API is used in processor scripts to access the HttpServletResponse object. The GlideServletResponse object provides a subset of the HttpServletResponse APIs. The methods are called using the global variable g_response. A useful global variable, g_target, is available in processor scripts. It contains the table name extracted from the URL. The URL to a processor has the format: https://<instance name.servicenow.com>/<path endpoint>.do?<parameter endpoint>=<value> where the path endpoint and parameter endpoint are defined on the processor form
**/
@:native("GlideServletResponse") extern class GlideServletResponse {
	function new();
	/**
		Sets the MIME type of the response
	**/
	function setContentType(type:String):Void;
	/**
		Sends a temporary redirect to the client
	**/
	function sendRedirect(location:String):Void;
	/**
		Sets the status code for the response
	**/
	function setStatus(status:Float):Void;
	/**
		Sets a response header to the specified value
	**/
	function setHeader(key:String, value:String):Void;
	static var prototype : GlideServletResponse;
}