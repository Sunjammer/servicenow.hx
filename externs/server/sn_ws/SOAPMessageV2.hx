package sn_ws;

@:native("sn_ws.SOAPMessageV2") extern class SOAPMessageV2 {
	function new(soapMessage:String, soapFunction:String);
	/**
		Configure the SOAP message to be sent through a MID Server
	**/
	function setMIDServer(midServerName:String):Void;
	/**
		Get the content of the SOAP message body
	**/
	function getRequestBody():String;
	/**
		Get the value for an HTTP header specified by the SOAP client
	**/
	function getRequestHeader(headerName:String):String;
	/**
		Set basic authentication headers for the SOAP message
	**/
	function setBasicAuth(userName:String, userPass:String):Void;
	/**
		Set WS-Security Username token
	**/
	function setWSSecurityUsernameToken(username:String, password:String):Void;
	/**
		Set an HTTP header in the SOAP message to the specified value
	**/
	function setRequestHeader(headerName:String, headerValue:String):Void;
	/**
		Get the URL of the endpoint for the SOAP message
	**/
	function getEndpoint():String;
	/**
		Set WS-Security X.509 token
	**/
	function setWSSecurityX509Token(keystoreId:String, keystoreAlias:String, keystorePassword:String, certificateId:String):Void;
	/**
		Set a variable from the SOAP message record to the specified value without escaping XML reserved characters
	**/
	function setStringParameterNoEscape(name:String, value:String):Void;
	/**
		Send the SOAP Message to the endpoint
	**/
	function execute():Dynamic;
	/**
		Set the amount of time the request waits for a response from the web service provider before the request times out
	**/
	function setHttpTimeout(timeoutMs:Float):Void;
	/**
		Set the endpoint for the SOAP message
	**/
	function setEndpoint(endpoint:String):Void;
	/**
		Set the body content to send to the web service provider
	**/
	function setRequestBody(requestBody:String):Void;
	/**
		Get name and value for all HTTP headers specified by the SOAP client
	**/
	function getRequestHeaders():Dynamic;
	/**
		Set a variable from the SOAP message record to the specified value
	**/
	function setStringParameter(name:String, value:String):Void;
	/**
		Define the SOAP action this SOAP message performs
	**/
	function setSOAPAction(soapAction:String):Void;
	/**
		Set the mutual authentication protocol profile for the SOAP message
	**/
	function setMutualAuth(profileName:String):Void;
	/**
		Associate outbound requests and the resulting response record in the ECC queue
	**/
	function setEccCorrelator(correlator:String):Void;
	/**
		Set web service security values for the SOAP message
	**/
	function setWSSecurity(keystoreId:String, keystoreAlias:String, keystorePassword:String, certificateId:String):Void;
	/**
		Override a value from the database by writing to the SOAP message payload
	**/
	function setEccParameter(name:String, value:String):Void;
	/**
		Send the SOAP Message to the endpoint asynchronously
	**/
	function executeAsync():Dynamic;
	static var prototype : SOAPMessageV2;
}