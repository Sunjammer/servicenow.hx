package;

/**
	The Scoped GlideElement API provides methods for dealing with fields and their values. Scoped GlideElement methods are available for the fields of the current GlideRecord
**/
@:native("GlideElement") extern class GlideElement {
	function new();
	/**
		Gets the currency ISO code for a record
	**/
	function getCurrencyCode():String;
	/**
		Gets the object's label
	**/
	function getLabel():String;
	/**
		Gets the name of the field
	**/
	function getName():String;
	/**
		Gets the value of the attribute on the field in question from the dictionary as a string. To get the value as a string, use getAttribute(string)
	**/
	function getBooleanAttribute(attribute:String):Dynamic;
	/**
		Determines if the GlideRecord table can be read from
	**/
	function canRead():Dynamic;
	/**
		Determines if the current field has been modified
	**/
	function changes():Dynamic;
	/**
		Gets the display value
	**/
	function getReferenceDisplayValue():String;
	/**
		Gets currency in a string
	**/
	function getCurrencyString():String;
	/**
		Gets table name for a reference field
	**/
	function getReferenceTable():String;
	/**
		Gets the reference value
	**/
	function getReferenceValue():String;
	/**
		Determines whether the field is null
	**/
	function nil():Dynamic;
	/**
		Gets the currency value in the sessions currency format
	**/
	function getSessionDisplayValue():String;
	/**
		Gets the decrypted value
	**/
	function getDecryptedValue():String;
	/**
		Gets the value of the attribute on the field in question from the dictionary as a string. If the attribute is a boolean attribute, use getBooleanAttribute(String) to get the value as a boolean rather than as a string
	**/
	function getAttribute(attribute:String):String;
	/**
		Gets the currency display value
	**/
	function getCurrencyDisplayValue():String;
	/**
		Gets the sessions currency ISO code
	**/
	function getSessionCurrencyCode():String;
	/**
		Gets a currency value
	**/
	function getCurrencyValue():String;
	/**
		The currency ISO code, in the base system currency
	**/
	function getReferenceCurrencyCode():String;
	/**
		Determines if the new value of a field after a change matches a certain object
	**/
	function changesTo(value:Dynamic):Dynamic;
	/**
		Retrieves the choice list for a field
	**/
	function getChoices(dependent:String):std.Array<Any>;
	/**
		Gets the table name
	**/
	function getTableName():String;
	/**
		Determines whether a field has a particular attribute
	**/
	function hasAttribute(attribute:String):Dynamic;
	/**
		Sets a date to a numeric value
	**/
	function setDateNumericValue(value:Dynamic):Void;
	/**
		Sets the display value of the field
	**/
	function setDisplayValue(value:Dynamic):Void;
	/**
		Gets a GlideRecord object for a reference element
	**/
	function getRefRecord():GlideRecord;
	/**
		Determines if the GlideRecord table can be written to
	**/
	function canWrite():Dynamic;
	/**
		Determines the previous value of the current field matched a certain object
	**/
	function changesFrom(value:Dynamic):Dynamic;
	/**
		Determines if the user's role permits creation of new records in this field
	**/
	function canCreate():Dynamic;
	/**
		Gets the field's element descriptor
	**/
	function getED():GlideElementDescriptor;
	/**
		Gets the ammount in the sessions currency
	**/
	function getSessionValue():String;
	/**
		Gets date in numberic value
	**/
	function dateNumericValue(value:String):Float;
	/**
		Adds an error message. Can be retrieved using getError()
	**/
	function setError(message:String):Void;
	/**
		Sets the display value of the field
	**/
	function setValue(value:Dynamic):Void;
	/**
		Gets the formatted display value of the field
	**/
	function getDisplayValue(maxCharacters:Float):String;
	/**
		Converts the value to a string
	**/
	function toString():String;
	static var prototype : GlideElement;
}