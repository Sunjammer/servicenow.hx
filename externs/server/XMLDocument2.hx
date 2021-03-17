package;

/**
	XMLDocument2 is a JavaScript Object wrapper for parsing and extracting XML data from an XML string. Use this JavaScript class to instantiate an object from an XML string, usually a return value from a Web Service invocation, or the XML payload of ECC Queue
**/
@:native("XMLDocument2") extern class XMLDocument2 {
	function new();
	/**
		Gets the first node in the specified xpath
	**/
	function getFirstNode(xpath:String):XMLNode;
	/**
		Creates an element node with a text child node and adds it to the current node
	**/
	function createElementWithTextValue(name:String, value:String):XMLNode;
	/**
		Gets the node after the specified node
	**/
	function getNextNode(prev:XMLNode):XMLNode;
	/**
		Checks if the XMLDocument is valid
	**/
	function isValid():Dynamic;
	/**
		Makes the node passed in as a parameter the current node
	**/
	function setCurrentElement(element:XMLNode):Void;
	/**
		Gets the document element node of the XMLDocument2. The document element node is the root node
	**/
	function getDocumentElement():XMLNode;
	/**
		Parses the XML string and loads it into the XMLDocument2 object
	**/
	function parseXML(xmlDoc:String):Dynamic;
	/**
		Creates and adds an element node to the current node. The element name is the string passed in as a parameter. The new element node has no text child nodes
	**/
	function createElement(name:String):XMLNode;
	/**
		Returns a string containing the XML
	**/
	function toString():String;
	/**
		Gets the node specified in the xpath
	**/
	function getNode(xpath:String):XMLNode;
	/**
		Gets all the text child nodes from the node referenced in the xpath
	**/
	function getNodeText(xpath:String):String;
	static var prototype : XMLDocument2;
}