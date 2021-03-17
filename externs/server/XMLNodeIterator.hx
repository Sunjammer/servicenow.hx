package;

/**
	The scoped XMLNodeIterator class allows you to iterate through a node of a XML document
**/
@:native("XMLNodeIterator") extern class XMLNodeIterator {
	function new();
	/**
		Gets the next element in the iteration
	**/
	function next():XMLNode;
	/**
		Determines if the iteration has more elements
	**/
	function hasNext():Dynamic;
	static var prototype : XMLNodeIterator;
}