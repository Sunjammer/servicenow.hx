package;

/**
	g_user is a global object used in client-side scripts, to get current user information
**/
@:native("g_user_proto") extern class G_user_proto {
	function new();
	/**
		Returns true if the current user has at least one of the specified roles in the comma-separated list or the admin role
	**/
	function hasRoleFromList(roles:String):Dynamic;
	/**
		Gets information for use in client scripts without making an AJAX call to the server. Works with gs.getSession().putClientData(,)
	**/
	function getClientData(key:String):String;
	/**
		Returns true only if the current user has this specified role
	**/
	function hasRoleExactly(role:String):Dynamic;
	/**
		Returns true if the current user has any role
	**/
	function hasRoles():Dynamic;
	/**
		Returns true if the current user has the selected role or the admin role
	**/
	function hasRole(role:String):Dynamic;
	/**
		Returns the first and last name of the current user
	**/
	function getFullName():String;
	static var prototype : G_user_proto;
}