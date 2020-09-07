note
	description: "[
	A condition that can evaluate to true or false. BooleanConditions are used by conditional formatting, data validation, and the criteria in filters.

		{
		  "type": enum (ConditionType),
		  "values": [
		    {
		      object (ConditionValue)
		    }
		  ]
		}

	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Boolean condition", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/other#booleancondition", "protocol=uri"

class
	EG_BOOLEAN_CONDITION

feature -- Acccess

	type: detachable EG_CONDITION_TYPE
			-- The type of condition.

	values: detachable LIST [EG_CONDITION_VALUE]

feature -- Element Change

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
		end

end
