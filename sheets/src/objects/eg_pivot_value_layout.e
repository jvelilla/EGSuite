note
	description: "[
		The layout of pivot values.
		Enums
		HORIZONTAL 	Values are laid out horizontally (as columns).
		VERTICAL 	Values are laid out vertically (as rows).
	]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=PivotValueLayout", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/pivot-tables#pivotvaluelayout", "protocol=uri"

class
	EG_PIVOT_VALUE_LAYOUT

feature -- Access

feature -- Eiffel to JSON

	to_json: JSON_STRING
		do
			create Result.make_from_string ("")
		end
end
