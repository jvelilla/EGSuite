note
	description: "[
	Criteria for showing/hiding rows in a pivot table.
	JSON representation

	{
	  "visibleValues": [
	    string
	  ]
	}
	]"
	date: "$Date$"
	revision: "$Revision$"
	eis:"name=PivotFilterCriteria", "src=https://developers.google.com/sheets/api/reference/rest/v4/PivotFilterCriteria", "protocol=uri"
class
	EG_PIVOT_FILTER_CRITERIA

feature -- Access

feature -- Element Change

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
		end

end
