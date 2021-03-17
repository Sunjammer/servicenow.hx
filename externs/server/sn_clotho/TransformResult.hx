package sn_clotho;

@:native("sn_clotho.TransformResult") extern class TransformResult {
	function new();
	/**
		Returns a series with the specified label
	**/
	function getByLabel(label:String):Data;
	/**
		Returns a mapping of group names to their series
	**/
	function byGroup():Dynamic;
	/**
		Returns the all series of this TransformResult in the form of an array
	**/
	function toArray():ts.Tuple1<Data>;
	/**
		Returns this result's series, assuming that there is a single resultant series
	**/
	function getData():Data;
	static var prototype : TransformResult;
}