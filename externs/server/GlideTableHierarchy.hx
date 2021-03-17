package;

/**
	The Scoped GlideTableHierarchy API provides methods for handling information about table relationships
**/
@:native("GlideTableHierarchy") extern class GlideTableHierarchy {
	function new();
	/**
		Returns true of this class has been extended
	**/
	function hasExtensions():Dynamic;
	/**
		Returns the table's name
	**/
	function getName():String;
	/**
		Returns true if this table is not in a hierarchy
	**/
	function isSoloClass():Dynamic;
	/**
		Returns a list of the table names in the hierarchy
	**/
	function getTables():std.Array<Any>;
	/**
		Returns a list of all tables that extend the current table and includes the current table
	**/
	function getAllExtensions():std.Array<Any>;
	/**
		Returns true if this is a base class
	**/
	function isBaseClass():Dynamic;
	/**
		Returns a list of all tables that extend the current table
	**/
	function getTableExtensions():std.Array<Any>;
	/**
		Returns the parent class
	**/
	function getBase():String;
	/**
		Returns the top level class in the hierarchy
	**/
	function getRoot():String;
	/**
		Returns a list of all classes in the hierarchy of the given table
	**/
	function getHierarchy():std.Array<Any>;
	static var prototype : GlideTableHierarchy;
}