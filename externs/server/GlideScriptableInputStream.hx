package;

/**
	A wrapper around an InputStream. No functions are provided to manipulate the stream from script. Rather this object can be passed to any API which takes an InputStream as an input parameter
**/
@:native("GlideScriptableInputStream") extern class GlideScriptableInputStream {
	function new();
	static var prototype : GlideScriptableInputStream;
}