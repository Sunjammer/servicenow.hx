package sn_ws;

@:native("sn_ws.RESTMessageV2") extern class RESTMessageV2 {
	function new(?name:String, ?methodName:String);
	/**
		Configure the REST message to communicate through a MID Server
	**/
	function setMIDServer(midServer:String):Void;
	/**
		Get the content of the REST message body
	**/
	function getRequestBody():String;
	/**
		Get the value for an HTTP header specified by the REST client
	**/
	function getRequestHeader(headerName:String):String;
	/**
		The HTTP method this REST message performs, such as GET or PUT. You must set an HTTP method when using the RESTMessageV2() constructor with no parameters
	**/
	function setHttpMethod(method:String):Void;
	/**
		Set basic authentication headers for the REST message
	**/
	function setBasicAuth(userName:String, userPass:String):Void;
	/**
		Set an HTTP header to the specified value
	**/
	function setRequestHeader(name:String, value:String):Void;
	/**
		Set the credentials for the REST message using an existing basic auth or OAuth 2.0 profile. Valid types are 'basic' and 'oauth2'. Valid profileIds are the sys_id of a Basic Auth Configuration [sys_auth_profile_basic] record or an OAuth Entity Profile [oauth_entity_profile] record
	**/
	function setAuthenticationProfile(type:String, profileId:String):Void;
	/**
		Append a name-value parameter to the request URL
	**/
	function setQueryParameter(name:String, value:String):Void;
	/**
		Uses the specified attachment as the request body of this REST Message. Mutually exclusive with setRequestBody
	**/
	function setRequestBodyFromAttachment(attachmentSysId:String):Void;
	/**
		Get the URL of the endpoint for the REST message
	**/
	function getEndpoint():String;
	/**
		Set a REST message function variable to the specified value without escaping XML reserved characters
	**/
	function setStringParameterNoEscape(name:String, value:String):Void;
	/**
		Send the REST message to the endpoint
	**/
	function execute():RESTResponseV2;
	/**
		Set the amount of time the REST message waits for a response from the REST provider
	**/
	function setHttpTimeout(timeoutMs:Float):Void;
	/**
		Set the endpoint for the REST message
	**/
	function setEndpoint(endpoint:String):Void;
	/**
		Set the body content of a PUT or POST request. Mutually exclusive with setRequestBodyFromAttachment
	**/
	function setRequestBody(body:String):Void;
	/**
		Get name and value for all HTTP headers specified by the REST client
	**/
	function getRequestHeaders():Dynamic;
	/**
		Setup the response body to be saved into the specified attachment when the request is sent. encryptCtxSysId is optional
	**/
	function saveResponseBodyAsAttachment(tableName:String, recordSysId:String, filename:String, encryptCtxSysId:String):Void;
	/**
		Set a REST message function variable to the specified value
	**/
	function setStringParameter(name:String, value:String):Void;
	/**
		Set the mutual authentication protocol profile for the REST message
	**/
	function setMutualAuth(profileName:String):Void;
	/**
		Set the ECC topic for the REST message. The default ECC topic is RESTProbe if topic is not set. In most cases it is unnecessary to set ECC topic
	**/
	function setEccTopic(topic:String):Void;
	/**
		Associate outbound requests and the resulting response record in the ECC queue
	**/
	function setEccCorrelator(correlator:String):Void;
	/**
		Override a value from the database by writing to the REST message payload
	**/
	function setEccParameter(name:String, value:String):Void;
	/**
		Send the REST message to the endpoint asynchronously. The instance does not wait for a response from the web service provider when making asynchronous calls
	**/
	function executeAsync():RESTResponseV2;
	/**
		Get the ECC topic for the REST message
	**/
	function getEccTopic():String;
	static var prototype : RESTMessageV2;
}