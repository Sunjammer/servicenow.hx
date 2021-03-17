package;

/**
	The scoped GlideAggregate class is an extension of GlideRecord and allows database aggregation (COUNT, SUM, MIN, MAX, AVG) queries to be done. This can be helpful in creating customized reports or in calculations for calculated fields. The GlideAggregate class works only on number fields. Since currency fields are strings, you can't use the GlideAggregate class on currency fields
**/
@:native("GlideAggregate") extern class GlideAggregate {
	function new(tableName:String);
	/**
		Moves to the next record in the GlideAggregate
	**/
	function next():Dynamic;
	/**
		Retrieves the number of rows in the GlideRecord
	**/
	function getRowCount():Float;
	/**
		Gets the query necessary to return the current aggregate
	**/
	function getAggregateEncodedQuery():String;
	/**
		Adds an aggregate
	**/
	function addAggregate(aggregate:String, field:String):Void;
	/**
		Issues the query and gets the results
	**/
	function query():Void;
	/**
		Retrieves the table name associated with this GlideRecord
	**/
	function getTableName():String;
	/**
		Orders the aggregates using the value of the specified field. The field will also be added to the group-by list
	**/
	function orderBy(field:String):Void;
	/**
		Sorts the aggregates into descending order based on the specified field
	**/
	function orderByDesc(field:String):Void;
	/**
		Determines if there are any more results in the GlideAggregate
	**/
	function hasNext():Dynamic;
	/**
		Provides the name of a field to use in grouping the aggregates. May be called numerous times to set multiple group fields
	**/
	function groupBy(field:String):Void;
	/**
		Retrieves the encoded query
	**/
	function getEncodedQuery():String;
	/**
		Adds a NOT NULL query to the aggregate
	**/
	function addNotNullQuery(field:String):GlideQueryCondition;
	/**
		Sorts the aggregates based on the specified aggregate and field
	**/
	function orderByAggregate(aggregate:String, field:String):Void;
	/**
		Adds a NULL query to the aggregate
	**/
	function addNullQuery(field:String):GlideQueryCondition;
	/**
		Gets the value of a field
	**/
	function getValue(field:String):String;
	/**
		Sets whether the results are to be grouped
	**/
	function setGroup(value:Dynamic):Void;
	/**
		Adds a query to the aggregate. Adds an encoded query to the other queries that may have been set for this aggregate
	**/
	function addEncodedQuery(query:String):Void;
	/**
		Adds a query to the aggregate
	**/
	function addQuery(field:String, operator_:String, value:String):GlideQueryCondition;
	/**
		Gets the value of the specified aggregate
	**/
	function getAggregate(aggregate:String, field:String):String;
	static var prototype : GlideAggregate;
}