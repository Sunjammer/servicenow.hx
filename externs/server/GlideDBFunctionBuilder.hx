package;

/**
	The Scoped GlideDBFunctionBuilder provides a builder API for creating platform function definition
**/
@:native("GlideDBFunctionBuilder") extern class GlideDBFunctionBuilder {
	function new();
	/**
		Start an addition function
	**/
	function add():GlideDBFunctionBuilder;
	/**
		Add a constant parameter to the current function
	**/
	function constant(constant:String):GlideDBFunctionBuilder;
	/**
		End the current function
	**/
	function endfunc():GlideDBFunctionBuilder;
	/**
		Start a subtraction function
	**/
	function subtract():GlideDBFunctionBuilder;
	/**
		Start a length function
	**/
	function length():GlideDBFunctionBuilder;
	/**
		Start a concatenation function
	**/
	function concat():GlideDBFunctionBuilder;
	/**
		Start a function that return the duration between 2 dates
	**/
	function datediff():GlideDBFunctionBuilder;
	/**
		Add a field parameter to the current function
	**/
	function field(fieldName:String):GlideDBFunctionBuilder;
	/**
		Return the completed function definition
	**/
	function build():String;
	/**
		Start a function that returns the current timestamp in the UTC timezone. This function should be used as a parameter to the datediff function to calculate a duration between the current datetime and another datetime field or datetime constant
	**/
	function now():GlideDBFunctionBuilder;
	/**
		Start a function that returns the day of the week of a given date
	**/
	function dayofweek():GlideDBFunctionBuilder;
	/**
		Start a division function
	**/
	function divide():GlideDBFunctionBuilder;
	/**
		Start a multiplication function
	**/
	function multiply():GlideDBFunctionBuilder;
	static var prototype : GlideDBFunctionBuilder;
}