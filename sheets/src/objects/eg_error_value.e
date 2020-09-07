note
	description: "[
	An error in a cell. 
	
	JSON representation

	{
	  "type": enum (ErrorType),
	  "message": string
	}

	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name= Error Value", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/other#ErrorValue", "protocol=uri"

class
	EG_ERROR_VALUE

feature -- Access

	type: detachable EG_ERROR_TYPE
		-- The type of error.

	message: detachabLe STRING
		-- A message with more information about the error (in the spreadsheet's locale). 	


feature -- Change Element

	set_type (a_type: like type)
			-- Set `type` with `a_type`.
		do
			type := a_type
		ensure
			type_set: type = a_type
		end

	set_message (a_message: like message)
		do
			message := a_message
		ensure
			message_set: message = a_message
		end


feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
			if attached type as l_type then
				Result.put (l_type.to_json, "type")
			end
			if attached message as l_msg then
				Result.put (create {JSON_STRING}.make_from_string (l_msg), "message")
			end
		end

end
