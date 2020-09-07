note
	description: "[
	A run of a text format. The format of this run continues until the start index of the next run. When updating, all fields must be set. 	

	{
	  "startIndex": integer,
	  "format": {
	    object (TextFormat)
	  }
	}
	]"
	date: "$Date$"
	revision: "$Revision$"

class
	EG_TEXT_FORMAT_RUN

feature -- Access

	start_index: INTEGER

	format: detachable EG_TEXT_FORMAT

feature -- Element Change

	set_start_index (a_val: like start_index)
		do
			start_index := a_val
		ensure
			start_index_set: start_index = a_val
		end

	set_format (a_val: like format)
		do
			format := a_val
		ensure
			format_set: format = a_val
		end

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
			Result.put (create {JSON_NUMBER}.make_integer (start_index), "startIndex")
			if attached format as l_format then
				Result.put (l_format.to_json, "format")
			end
		end
end
