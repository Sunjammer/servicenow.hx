package sn_clotho;

@:native("sn_clotho.TransformPart") extern class TransformPart {
	function new();
	/**
		Subtracts the specified constant quantity from all values
	**/
	function sub(substrahend:Float):TransformPart;
	/**
		Multiplies all values by the specified constant quantity
	**/
	function mul(factor:Float):TransformPart;
	/**
		Performs a logarithm on all values with the specified constant base
	**/
	function log(base:Float):TransformPart;
	/**
		Produces a new series where each value is the sum of all of the values at each timestamp
	**/
	function sum():TransformPart;
	/**
		Groups the subject records by the specified field
	**/
	function groupBy(field:String):TransformPart;
	/**
		Divides all values by the specified constant quantity
	**/
	function div(divisor:Float):TransformPart;
	/**
		Fits the series to the specified model using the specified parameters
	**/
	function fit(_params:Dynamic):TransformPart;
	/**
		Produces a new series where each value is the average of all of the values at each timestamp
	**/
	function avg():TransformPart;
	/**
		Produces a new series with the smallest values at each timestamp
	**/
	function min():TransformPart;
	/**
		Produces a new series with the values filtered (AVG, MAX, MIN or LAST) by non-overlapping windows
	**/
	function partition(_aggregator:String, _window:String, _base:String):TransformPart;
	/**
		Produces a set of series with the top 'count' (specified) largest values at each timestamp
	**/
	function top(count:Float):TransformPart;
	/**
		Limits the number of data points in each series to the specified count
	**/
	function limit(count:Float):TransformPart;
	/**
		Produces a set of new series by specified condition
	**/
	function where(condition:Dynamic):TransformPart;
	/**
		Produces a new series with the standard deviation of the values at each timestamp
	**/
	function stddev():TransformPart;
	/**
		Floors all values to the specified precision
	**/
	function floor(precision:Float):TransformPart;
	/**
		Produces a set of series where each is one of the specified percentiles of all of the data
	**/
	function fractiles(fractions:ts.Tuple1<Float>):TransformPart;
	/**
		Adds the specified constant quantity to all values
	**/
	function add(summand:Float):TransformPart;
	/**
		Produces a new series with the largest values at each timestamp
	**/
	function max():TransformPart;
	/**
		Produces a set of series with the bottom 'count' (specified) smallest values at each timestamp
	**/
	function bottom(count:Float):TransformPart;
	/**
		Produces a new series that counts the number of series with values in the input
	**/
	function count():TransformPart;
	/**
		Populates missing (NaN) values with two-point linear regression using the specified tolerance for maximum range of missing data
	**/
	function interpolate(countOrDuration:Dynamic):TransformPart;
	/**
		Labels this series
	**/
	function label(label:String):TransformPart;
	/**
		Ceils all values to the specified precision
	**/
	function ceil(precision:Float):TransformPart;
	/**
		Produces a new series with the values filtered (AVG, MAX, MIN or LAST) by sliding windows
	**/
	function filter(_aggregator:String, _window:String):TransformPart;
	/**
		Produces a new series with the median of the values at each timestamp
	**/
	function median():TransformPart;
	/**
		Rounds all values to the specified precision
	**/
	function round(precision:Float):TransformPart;
	/**
		Specifies the metric field that this transformer operates on
	**/
	function metric(metricName:String):TransformPart;
	/**
		Includes this intermediate transform as part of the result
	**/
	function collect():TransformPart;
	/**
		Aligns all series to have the specified number of data points
	**/
	function resample(numValues:Float):TransformPart;
	static var prototype : TransformPart;
}