package;

/**
	The scoped XMLNode API allows you to query values from XML nodes. XMLNodes are extracted from XMLDocument2 objects, which contain XML strings
**/
@:native("XMLNode") extern class XMLNode {
	function new();
	/**
		Gets the node's value
	**/
	function getNodeValue():String;
	function appendChild(newChild:XMLNode):Void;
	function setAttribute(attribute:String, value:String):Void;
	/**
		Gets the node's XMLNodeIterator object
	**/
	function getChildNodeIterator():XMLNodeIterator;
	/**
		Gets the value of the specified attribute
	**/
	function getAttribute(attribute:String):String;
	/**
		Determines if the node has the specified attribute
	**/
	function hasAttribute(attribute:String):Dynamic;
	/**
		Gets the node's first child node
	**/
	function getFirstChild():XMLNode;
	/**
		Gets the node's string value
	**/
	function toString():String;
	/**
		Gets the node's text content
	**/
	function getTextContent():String;
	/**
		Gets the node's name
	**/
	function getNodeName():String;
	/**
		Gets the node's last child node
	**/
	function getLastChild():XMLNode;
	static var prototype : XMLNode;
}