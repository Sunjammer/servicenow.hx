package;

/**
	g_form is a global object used in client-side scripts to customize forms
**/
@:native("g_form_proto") extern class G_form_proto {
	function new();
	/**
		Shows or hides a section Works in both tab and flat modes. This method is available starting with the Fuji release
	**/
	function setSectionDisplay(sectionName:String, display:Dynamic):Dynamic;
	/**
		Removes all options from a choice list
	**/
	function clearOptions(fieldName:String):Void;
	/**
		Returns the <option> element for a select box named fieldName and where choiceValue matches the option value Returns null if the field is not found or the option is not found
	**/
	function getOption(fieldName:String, choiceValue:String):js.html.Element;
	/**
		Hides all related lists on the form
	**/
	function hideRelatedLists():Void;
	/**
		Removes a specific option from a choice list
	**/
	function removeOption(fieldName:String, choiceValue:String):Void;
	/**
		Hides all field messages. <type> paramter is optional
	**/
	function hideAllFieldMsgs(type:String):Void;
	/**
		Returns false if the field's value is false or undefined, otherwise true is returned. Useful with checkbox fields Returns true when the checkbox is checked
	**/
	function getBooleanValue(fieldName:String):Dynamic;
	/**
		Returns all section names, whether visible or not, in an array This method is available starting with the Fuji release
	**/
	function getSectionNames():String;
	/**
		Displays either an informational or error message under the specified form field (either a control object or the name of the field). Type may be either 'info' or 'error.' If the control or field is currently scrolled off the screen, it will be scrolled to. A global property (glide.ui.scroll_to_message_field) is available that controls automatic message scrolling when the form field is offscreen (scrolls the form to the control or field)
	**/
	function showFieldMsg(input:String, message:String, type:String, scrollForm:Dynamic):Void;
	/**
		Returns true if the field is required Returns false if the field is optional
	**/
	function isMandatory(fieldName:String):Dynamic;
	/**
		Returns the HTML element for the form
	**/
	function getFormElement():js.html.Element;
	/**
		Displays the field if true. Hides the field if false. If the field is hidden, the space is left blank. This method cannot hide mandatory fields with no value
	**/
	function setVisible(fieldName:String, display:Dynamic):Void;
	/**
		Returns the HTML element for the specified field Compound fields may contain several HTML elements. Generally not necessary as there are built-in methods that use the fields on the form
	**/
	function getControl(fieldName:String):js.html.Element;
	/**
		Returns the name of the table this record belongs to
	**/
	function getTableName():String;
	/**
		Hides the message placed by showFieldMsg()
	**/
	function hideFieldMsg(input:String, clearAll:Dynamic):Void;
	/**
		Returns true if the record has never been saved Returns false if the record has been saved
	**/
	function isNewRecord():Dynamic;
	/**
		Displays an error message under the specified form field (either a control object or the name of the field). If the control or field is currently scrolled off the screen, it will be scrolled to. A global property (glide.ui.scroll_to_message_field) is available that controls automatic message scrolling when the form field is offscreen (scrolls the form to the control or field). The showFieldMsg() method is a similar method that requires a 'type' parameter
	**/
	function showErrorBox(input:String, message:String, scrollForm:Dynamic):Void;
	/**
		Removes the icon that matches the exact same name and text. This method is available starting with the Fuji release
	**/
	function removeDecoration(fieldName:String, icon:String, title:String):Void;
	/**
		Returns the sys_id of the record displayed in the form
	**/
	function getUniqueValue():String;
	/**
		Hides the error message placed by showErrorBox()
	**/
	function hideErrorBox(input:String):Void;
	/**
		Gets the plain text value of the field label. This method is available starting with the Fuji release
	**/
	function getLabelOf(fieldName:String):String;
	/**
		Makes the field read-only if true Makes the field editable if false. Note: Both setReadOnly and setReadonly are functional.  Best Practice: Use UI Policy rather than this method whenever possible
	**/
	function setReadOnly(fieldName:String, value:Dynamic):Void;
	/**
		Flashes the specified color the specified number of times in the field. Used to draw attention to a particular field
	**/
	function flash(widgetName:String, color:String, count:Dynamic):Void;
	/**
		Makes the field required if true. Makes the field optional if false. Best Practice: Use UI Policy rather than this method whenever possible
	**/
	function setMandatory(fieldName:String, value:Dynamic):Void;
	/**
		Saves the record User will be taken away from the form, returning them to where they were previously
	**/
	function submit():Void;
	/**
		Returns the value of the specified field as an integer An empty value returns 0
	**/
	function getIntValue(fieldName:String):Dynamic;
	/**
		Grays out field and makes it unavailable
	**/
	function setDisabled(fieldName:String, value:Dynamic):Void;
	/**
		Returns the most recent action name or, for a client script, the sys_id of the UI Action clicked Note: not available to Wizard Client Scripts
	**/
	function getActionName():String;
	/**
		Saves the record without navigating away from the record (update and stay)
	**/
	function save():Void;
	/**
		Removes messages that were previously added with addErrorMessage() and addInfoMessage()
	**/
	function clearMessages():Void;
	/**
		Returns the decimal value of the specified field
	**/
	function getDecimalValue(fieldName:String):String;
	/**
		Sets the plain text value of the field label. This method is available starting with the Fuji release
	**/
	function setLabelOf(fieldname:String, label:String):Void;
	/**
		Displays an error message at the top of the form
	**/
	function addErrorMessage(message:String):Void;
	/**
		Hides the specified related list on the form
	**/
	function hideRelatedList(listTableName:String):Void;
	/**
		Prevents new file attachments from being added Hides the paperclip icon. See also: enableAttachments()
	**/
	function disableAttachments():Void;
	/**
		Allows new file attachments to be added Shows the paperclip icon. See also: disableAttachments()
	**/
	function enableAttachments():Void;
	/**
		Returns the GlideRecord for a specified field getReference() accepts a second parameter, a callback function Warning: This requires a call to the server so using this function will require additional time and may introduce latency to your page
	**/
	function getReference(fieldName:String, callback:String):String;
	/**
		Displays the field if true. Hides the field if false. This method cannot hide mandatory fields with no value. If the field is hidden, the space is used to display other items
	**/
	function setDisplay(fieldName:String, display:Dynamic):Void;
	/**
		Displays the specified related list on the form
	**/
	function showRelatedList(listTableName:String):Void;
	/**
		Displays all related lists on the form
	**/
	function showRelatedLists():Void;
	/**
		Adds an icon on a field’s label. This method is available starting with the Fuji release
	**/
	function addDecoration(fieldName:String, icon:String, title:String):Void;
	/**
		Removes any value(s) from the specified field
	**/
	function clearValue(fieldName:String):Void;
	/**
		Returns the value of the specified field
	**/
	function getValue(fieldName:String):String;
	/**
		Displays an informational message at the top of the form
	**/
	function addInfoMessage(message:String):Void;
	/**
		Adds a choice to a choice list field If the index is not specified, the choice is added to the end of the list. Optional: Use the index field to specify a particular place in the list
	**/
	function addOption(fieldName:String, choiceValue:String, choiceLabel:String):Void;
	/**
		Returns the HTML element for the field specified via the ID Compound fields may contain several HTML elements. Generally not necessary as there are built-in methods that use the fields on the form
	**/
	function getElement(id:String):js.html.Element;
	/**
		Sets the value and the display value of a field Will display value if there is no displayValue
	**/
	function setValue(fieldName:String, value:String, displayValue:String):Void;
	/**
		Returns the elements for the form's sections in an array
	**/
	function getSections():String;
	/**
		Returns true if the section is visible Returns false if the section is not visible or does not exist. This method is available starting with the Fuji release
	**/
	function isSectionVisible(sectionName:String):Dynamic;
	static var prototype : G_form_proto;
}