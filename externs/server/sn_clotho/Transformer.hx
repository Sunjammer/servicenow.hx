package sn_clotho;

@:native("sn_clotho.Transformer") extern class Transformer {
	function new(gr:GlideRecord);
	/**
		Specifies the metric field that this transformer operates on
	**/
	function metric(metricName:String):TransformPart;
	/**
		Groups the subject records by the specified field
	**/
	function groupBy(field:String):TransformPart;
	/**
		Executes the transforms defined by this transformer over the specified time range and returns an object containing the results
	**/
	function execute(rangeStart:GlideDateTime, rangeEnd:GlideDateTime):TransformResult;
	static var prototype : Transformer;
}