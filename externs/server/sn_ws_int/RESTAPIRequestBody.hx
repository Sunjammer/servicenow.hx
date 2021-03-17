package sn_ws_int;

@:native("sn_ws_int.RESTAPIRequestBody") extern class RESTAPIRequestBody {
	function new();
	/**
		Returns the next entry from the request body as an object if request is array. If not an array then returns entire request body as an object
	**/
	function nextEntry():Dynamic;
	/**
		The request body de-serialized as an object
	**/
	var data : Dynamic;
	/**
		The request body as a string -- be careful to consider impact to memory
	**/
	var dataString : String;
	/**
		The body of the request as a stream. Note, this object provides no functions to manipulate the stream from script. Rather this object can be passed to another API which takes an InputStream as an input parameter
	**/
	var dataStream : GlideScriptableInputStream;
	/**
		Return true if request has more entries. Use this in conjunction with nextEntry
	**/
	function hasNext():Dynamic;
	static var prototype : RESTAPIRequestBody;
}