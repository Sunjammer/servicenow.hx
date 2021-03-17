package;

/**
	The scoped GlideElementDescriptor class provides information about individual fields
**/
@:native("GlideElementDescriptor") extern class GlideElementDescriptor {
	function new();
	/**
		Returns the field's name
	**/
	function getName():String;
	/**
		Returns the field's data type
	**/
	function getInternalType():String;
	/**
		Returns the field's label
	**/
	function getLabel():String;
	/**
		Returns the field's length
	**/
	function getLength():Float;
	static var prototype : GlideElementDescriptor;
}