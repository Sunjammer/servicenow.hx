package;

/**
	g_list is a global object used in client-side scripts to customize lists
**/
@:native("g_list_proto") extern class G_list_proto {
	function new();
	/**
		Sorts the list in descending order and saves the choice
	**/
	function sortDescending(field:String):Void;
	/**
		Returns true if the list has been personalized by the user by choosing the list mechanic and changing the list layout
	**/
	function isUserList():Dynamic;
	/**
		Sets the first row that will be displayed in the list when the list is refreshed
	**/
	function setFirstRow(rowNum:Float):Void;
	/**
		Sets the orderBy criteria for the list. For a single order by field use orderBy field or orderByDescField. For multiple fields, use orderByField1^orderByField2^orderByField3. orderBy specifies ascending order and orderByDesc specifies descending. These prefix strings are optional. If not specified orderBy is assumed
	**/
	function setOrderBy(orderBy:String):Void;
	/**
		Returns the field or comma-separated list of fields that are used to group the list
	**/
	function getGroupBy():String;
	/**
		Displays or hides all of the groups within the list and saves the current collapsed/expanded state of the groups as a user preference
	**/
	function showHideGroups(showFlag:Dynamic):Void;
	/**
		Sets the groupBy criteria for the list, for a single field or multiple fields. For a single field, use field or groupByField. The groupBy prefix is optional. For multiple fields use field1^field2^field3 or groupByField1^groupByField2^groupByField3
	**/
	function setGroupBy(groupBy:String):Void;
	/**
		Returns the list title
	**/
	function getTitle():String;
	/**
		Returns the first field that is used to order by or a blank
	**/
	function getOrderBy():String;
	/**
		Returns the GlideList2 object for the list or for the list that contains the specified item. String listID or DOMElement element - specifies the list by list ID or specifies the list by element
	**/
	function get(listID:String, element:Dynamic):Dynamic;
	/**
		Returns the view used to display the list
	**/
	function getView():String;
	/**
		Returns the encoded query string for the list
	**/
	function getQuery(orderBy:Dynamic, groupBy:Dynamic, fixed:Dynamic, all:Dynamic):String;
	/**
		Returns the sysparm_fixed query. A fixed query is the part of the query that cannot be removed from the breadcrumb (i.e., it is fixed for the user). It is specified by including a 'sysparm_fixed_query parameter' for the application module
	**/
	function getFixedQuery():String;
	/**
		Sets the encoded query string for the list, including the orderBy and groupBy if specified, and then refreshes the list using the new filter
	**/
	function setFilterAndRefresh(filter:String):Void;
	/**
		Displays or hides the list and saves the current collapsed/expanded state of the list as a user preference
	**/
	function showHideList(showFlag:Dynamic):Void;
	/**
		Returns the table name for the list
	**/
	function getTableName():String;
	/**
		Clears the image for an item
	**/
	function toggleListNoPref():Void;
	/**
		Refreshes the list. The orderBy part of the list filter is ignored so that the list uses its natural ordering when it is refreshed
	**/
	function refresh(firstRow:Float, additionalParms:String):Void;
	/**
		Sets the number of rows per page to display
	**/
	function setRowsPerPage(rows:Float):Void;
	/**
		Sorts the list in ascending order and saves the choice
	**/
	function sort(field:String):Void;
	/**
		Sets the encoded query string for the list, ignoring the orderBy and groupBy parts of the query string
	**/
	function setFilter(filter:String):Void;
	/**
		Returns the name of the list, which is usually the table name
	**/
	function getListName():String;
	/**
		Refreshes the list. The orderBy part of the list filter is included if it is currently specified for the list
	**/
	function refreshWithOrderBy(firstRow:Float, additionalParms:String):Void;
	/**
		Adds a single term to the list query filter
	**/
	function addFilter(filter:String):Dynamic;
	/**
		Returns the related list field that associates the related list to the parent form
	**/
	function getRelated():String;
	/**
		Returns the name of the parent table for a related list (the table associated with the form)
	**/
	function getParentTable():String;
	/**
		Returns a comma-separated list of the sys_ids for the items that are checked in the list
	**/
	function getChecked():String;
	/**
		Toggles the display of the list and saves the current collapsed/expanded state of the list as a user preference
	**/
	function toggleList():Void;
	static var prototype : G_list_proto;
}