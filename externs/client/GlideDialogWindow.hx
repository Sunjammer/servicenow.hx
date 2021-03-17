package;

/**
	Constructor to create a new dialog window object in the current window and frame. id is the name of the UI page to load into the dialog window
**/
@:native("GlideDialogWindow") extern class GlideDialogWindow {
	function new(id:String);
	/**
		Sets the size of the dialog window. If you do not pass width and height parameters, a default size is used
	**/
	function setSize(width:Dynamic, height:Dynamic):Void;
	/**
		Closes the dialog window
	**/
	function destroy():Void;
	/**
		Sets the title of the dialog window
	**/
	function setTitle(title:String):Void;
	/**
		Sets a given window property to a specified value. Any window property can be set using this method
	**/
	function setPreference(name:String, value:String):Void;
	/**
		Renders the dialog window
	**/
	function render():Void;
	static var prototype : GlideDialogWindow;
}