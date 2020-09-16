note
	description: "[
		A single grouping (either row or column) in a pivot table.
		
		{
		  "showTotals": boolean,
		  "valueMetadata": [
		    {
		      object (PivotGroupValueMetadata)
		    }
		  ],
		  "sortOrder": enum (SortOrder),
		  "valueBucket": {
		    object (PivotGroupSortValueBucket)
		  },
		  "repeatHeadings": boolean,
		  "label": string,
		  "groupRule": {
		    object (PivotGroupRule)
		  },
		  "sourceColumnOffset": integer
		}
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=PivotGroup", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/pivot-tables#PivotGroup", "protocol=uri"

class
	EG_PIVOT_GROUP

feature -- Access

feature -- Element Change

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
		end
end
