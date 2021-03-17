package;

/**
	GlideRecordSecure is a class inherited from GlideRecord that performs the same functions as GlideRecord, and also enforces ACLs
**/
@:native("GlideRecordSecure") extern class GlideRecordSecure extends GlideRecord {
	function new();
	static var prototype : GlideRecordSecure;
}