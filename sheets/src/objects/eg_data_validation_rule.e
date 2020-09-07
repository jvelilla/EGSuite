note
	description: "[
			A data validation rule.
		
			JSON representation
		
			{
			  "condition": {
			    object (BooleanCondition)
			  },
			  "inputMessage": string,
			  "strict": boolean,
			  "showCustomUi": boolean
			}
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Data validation rule", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/cells#datavalidationrule", "protocol=uri"

class
	EG_DATA_VALIDATION_RULE

feature -- Access

	condition: detachable EG_BOOLEAN_CONDITION
			-- The condition that data in the cell must match.

	input_message: detachable STRING
			-- A message to show the user when adding data to the cell.

	strict: BOOLEAN
			-- True if invalid data should be rejected.

	show_custom_ui: BOOLEAN
			-- True if the UI should be customized based on the kind of condition. If true, "List" conditions will show a dropdown.


feature -- Element Change

	set_condition (a_val: like condition)
		do
			condition := a_val
		ensure
			condition_set: condition = a_val
		end

	set_input_message (a_val: like input_message)
		do
			input_message := a_val
		ensure
			input_message_set: input_message = a_val
		end

	set_strict (a_val: like strict)
		do
			strict := a_val
		ensure
			strict_set: strict = a_val
		end

	set_show_custom_ui (a_val: like show_custom_ui)
		do
			show_custom_ui := a_val
		ensure
			show_custom_ui_set: show_custom_ui = a_val
		end

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
			if attached condition as l_condition then
				Result.put (l_condition.to_json, "condition")
			end
			if attached input_message as l_im then
				Result.put (create {JSON_STRING}.make_from_string (l_im), "inputMessage")
			end
			Result.put (create {JSON_BOOLEAN}.make (strict), "strict")
			Result.put (create {JSON_BOOLEAN}.make (show_custom_ui), "showCustomUi")
		end
end
