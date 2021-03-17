package;

/**
	ServiceNow processors are equivalent to Java servlets. Processors provide a customizable URL endpoint that can execute arbitrary server-side Javascript code and produce output such as TEXT, JSON, or HTML. The GlideServletRequest API is used in processor scripts to access the HttpServletRequest object. The GlideServletRequest object provides a subset of the HttpServletRequest APIs. The methods are called using the global variable g_request. A useful global variable, g_target, is available in processor scripts. It contains the table name extracted from the URL. The URL to a processor has the format: https://<instance name.servicenow.com>/<path endpoint>.do?<parameter endpoint>=<value> where the path endpoint and parameter endpoint are defined on the processor form
**/
@:native("GlideServletRequest") extern class GlideServletRequest {
	function new();
	/**
		Returns an array of headers as a string
	**/
	function getHeaders(name:String):ts.Tuple1<String>;
	/**
		Returns an array of header names as a string
	**/
	function getHeaderNames():ts.Tuple1<String>;
	/**
		Returns the query string from the request
	**/
	function getQueryString():String;
	/**
		Returns the content type
	**/
	function getContentType():String;
	/**
		Returns an array of parameter names as a string
	**/
	function getParameterNames():ts.Tuple1<String>;
	/**
		Returns the header
	**/
	function getHeader(name:String):String;
	/**
		Returns an object
	**/
	function getParameter(name:String):Null<{ }>;
	static var prototype : GlideServletRequest;
}