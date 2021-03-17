package sn_clotho;

@:native("sn_clotho.Data") extern class Data {
	function new();
	/**
		Returns the value of the subject this series operates on
	**/
	function getSubject():String;
	/**
		Converts the specified model string into a series
	**/
	function fromModelString(model:String):Data;
	/**
		Returns the label of this series
	**/
	function getLabel():String;
	/**
		Returns the start time of this series
	**/
	function getStart():GlideDateTime;
	/**
		Returns the number of values in this series
	**/
	function size():Float;
	/**
		Returns the values in this series in the form of an array of numbers
	**/
	function getValues():ts.Tuple1<Float>;
	/**
		Returns the name of the table this series operates on
	**/
	function getTableName():String;
	/**
		Returns the name of the metric this series operates on
	**/
	function getMetricName():String;
	/**
		Converts this series into a model string
	**/
	function toModelString():String;
	/**
		Returns the end time of this series
	**/
	function getEnd():GlideDateTime;
	/**
		Returns the period of this series
	**/
	function getPeriod():Float;
	static var prototype : Data;
}