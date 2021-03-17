package;

/**
	Scoped API for PluginManager
**/
@:native("GlidePluginManager") extern class GlidePluginManager {
	function new();
	/**
		Determine if a plugin is activated
	**/
	function isActive(pluginID:String):Dynamic;
	static var prototype : GlidePluginManager;
}