package;

/**
	Scoped GlideRecord is used for database operations instead of writing SQL queries. Provides data access APIs to retrieve, update, and delete records from a table
**/
@:native("GlideRecord") extern class GlideRecord {
	function new(tableName:String);
	/**
		Retrieves the last error message
	**/
	function getLastErrorMessage():String;
	/**
		The label of the field as a String
	**/
	function getLabel():String;
	/**
		Adds a filter to return records based on a relationship in a related table
	**/
	function addJoinQuery(joinTable:String, primaryField:Dynamic, joinTableField:Dynamic):GlideQueryCondition;
	function setCategory(category:String):Void;
	/**
		Adds a filter to return active records
	**/
	function addActiveQuery():GlideQueryCondition;
	/**
		Determines if the Access Control Rules which include the user's roles permit deleting records in this table
	**/
	function canDelete():Dynamic;
	/**
		Sets a flag to indicate if the next database action (insert, update, delete) is to be aborted
	**/
	function setAbortAction(b:Dynamic):Void;
	/**
		Retrieves the number of rows in the GlideRecord
	**/
	function getRowCount():Float;
	/**
		Retrieve the specified platform function in addition of the field values
	**/
	function addFunction(functionDefinition:String):Void;
	/**
		Runs the query against the table based on the specified filters by addQuery and addEncodedQuery
	**/
	function query():Void;
	/**
		Retrieves the table name associated with this GlideRecord
	**/
	function getTableName():String;
	function getCategory():String;
	/**
		Specifies a descending orderBy
	**/
	function orderByDesc(fieldName:String):Void;
	/**
		Determines if there are any more records in the GlideRecord
	**/
	function hasNext():Dynamic;
	function getClassDisplayValue():String;
	/**
		Checks if the current record is a new record that has not yet been inserted into the database
	**/
	function isNewRecord():Dynamic;
	/**
		Retrieves the query condition of the current result set as an encoded query string
	**/
	function getEncodedQuery():String;
	/**
		Updates each GlideRecord in the list with any changes that have been made
	**/
	function updateMultiple():Void;
	/**
		Retrieves the class name for the current record
	**/
	function getRecordClassName():String;
	function autoSysFields(b:Dynamic):Void;
	/**
		Retrieves the name of the display field
	**/
	function getDisplayName():String;
	/**
		Adds a filter to return records by specifying a field and value.

		Adds a filter to return records by specifying a field and value. You can use an optional 'operator' as a second parameter
	**/
	@:overload(function(name:String, operator_:String, value:String):GlideQueryCondition { })
	function addQuery(name:String, value:String):GlideQueryCondition;
	/**
		Sets the maximum number of records in the GlideRecord to be fetched in the next query
	**/
	function setLimit(limit:Float):Void;
	/**
		Gets the primary key of the record, which is usually the sys_id unless otherwise specified
	**/
	function getUniqueValue():String;
	/**
		Moves to the next record in the GlideRecord
	**/
	function next():Dynamic;
	/**
		Deletes records that satisfy current query condition
	**/
	function deleteMultiple():Void;
	/**
		Determines if the Access Control Rules which include the user's roles permit reading records in this table
	**/
	function canRead():Dynamic;
	/**
		Insert a new record using the field values that have been set for the current record
	**/
	function insert():String;
	/**
		Updates the current GlideRecord with any changes that have been made
	**/
	function update(reason:Dynamic):String;
	/**
		Specifies an orderBy column
	**/
	function orderBy(fieldName:String):Void;
	/**
		Adds a filter to return records where the specified field is not null
	**/
	function addNotNullQuery(fieldName:String):GlideQueryCondition;
	/**
		Adds a filter to return records where the specified field is null
	**/
	function addNullQuery(fieldName:String):GlideQueryCondition;
	/**
		Adds an encoded query to the other queries that may have been set
	**/
	function addEncodedQuery(query:String):Void;
	/**
		Gets the attributes on the field in question from the dictionary
	**/
	function getAttribute(attribute:String):String;
	/**
		Defines a GlideRecord based on the specified expression of name = value
	**/
	function get(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Determines if current record is a valid record
	**/
	function isValidRecord():Dynamic;
	/**
		Sets sys_id value for the current record
	**/
	function setNewGuidValue(guid:String):Void;
	/**
		Determines whether the table exists or not
	**/
	function isValid():Dynamic;
	/**
		Determines whether the current database action is to be aborted. Available in Fuji patch 3
	**/
	function isActionAborted():Dynamic;
	/**
		Sets a range of rows to be returned by subsequent queries. If forceCount is true, getRowCount() method will return all possible records
	**/
	function chooseWindow(firstRow:Float, lastRow:Float, forceCount:Dynamic):Void;
	/**
		Determines if the Access Control Rules which include the user's roles permit editing records in this table
	**/
	function canWrite():Dynamic;
	/**
		Determines if the Access Control Rules which include the user's roles permit inserting new records in this table
	**/
	function canCreate():Dynamic;
	/**
		Enables and disables the running of business rules and script engines. When disabled, inserts and updates are not audited
	**/
	function setWorkflow(e:Dynamic):Void;
	/**
		Retrieves the underlying value of a field
	**/
	function getValue(fieldName:String):String;
	/**
		Retrieves a link to the current record
	**/
	function getLink(nostack:Dynamic):String;
	/**
		Retrieves the GlideElement for a specified field
	**/
	function getElement(fieldName:String):GlideElement;
	/**
		Sets the value for the specified field.
	**/
	function setValue(fieldName:String, value:Dynamic):Void;
	/**
		Retrieves the display value for the current record
	**/
	function getDisplayValue(fieldName:String):String;
	/**
		Determines if the given field is defined in the current table
	**/
	function isValidField(fieldName:String):Dynamic;
	/**
		Creates an empty record suitable for population before an insert
	**/
	function initialize():Void;
	/**
		Retrieves the current operation being performed, such as insert, update, or delete
	**/
	function operation():String;
	/**
		Creates a new GlideRecord, sets the default values for the fields, and assigns a unique ID to the record
	**/
	function newRecord():Void;
	/**
		Deletes the current record
	**/
	function deleteRecord():Dynamic;
	static var prototype : GlideRecord;
}