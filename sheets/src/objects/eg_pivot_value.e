note
	description: "[
		PivotValue

		The definition of how a value in a pivot table should be calculated.
		JSON representation

		{
		  "summarizeFunction": enum (PivotValueSummarizeFunction),
		  "name": string,
		  "calculatedDisplayType": enum (PivotValueCalculatedDisplayType),

		  // Union field value can be only one of the following:
		  "sourceColumnOffset": integer,
		  "formula": string
		  // End of list of possible types for union field value.
		}
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=PivotValue", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/pivot-tables#PivotValue", "protocol=uri"

class
	EG_PIVOT_VALUE

feature -- Access

feature -- Element Change

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
		end
end
