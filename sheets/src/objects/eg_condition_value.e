note
	description: "[
	The value of the condition. 
	
	{

	  // Union field value can be only one of the following:
	  "relativeDate": enum (RelativeDate),
	  "userEnteredValue": string
	  // End of list of possible types for union field value.
	}

	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name= Condition value", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/other#conditionvalue", "protocol=uri"
class
	EG_CONDITION_VALUE


feature -- Access

	relative_date: detachable EG_RELATIVE_DATE
			-- A relative date (based on the current date). Valid only if the type is DATE_BEFORE , DATE_AFTER , DATE_ON_OR_BEFORE or DATE_ON_OR_AFTER .
			--
			-- Relative dates are not supported in data validation. They are supported only in conditional formatting and conditional filters.

	user_entered_value: detachable STRING
			-- A value the condition is based on. The value is parsed as if the user typed into a cell. Formulas are supported (and must begin with an = or a '+').

feature -- Status Report

	is_relative_date_set: BOOLEAN

	is_user_entered_value_set: BOOLEAN

feature -- Element Change

	set_relative_date (a_date: like relative_date)
			-- Set `relative_date` with `a_date`.
		do
			is_relative_date_set := True
			is_user_entered_value_set := False
			relative_date := a_date
		ensure
			relative_date_set: relative_date = a_date and is_relative_date_set and not is_user_entered_value_set
		end

	set_user_entered_value (a_value: like user_entered_value)
			-- Set `user_entered_value` with `a_value`
		do
			is_relative_date_set := False
			is_user_entered_value_set := True
			user_entered_value := a_value
		ensure
			user_entered_value_set: user_entered_value = a_value  and is_user_entered_value_set and not is_relative_date_set
		end

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
			-- JSon representation of the current object.
		do
			create Result.make_empty
			if is_relative_date_set and then attached relative_date as l_rd then
				Result.put (l_rd.to_json, "relativeDate")
			elseif is_user_entered_value_set and then attached user_entered_value as l_uv then
				Result.put (create {JSON_STRING}.make_from_string (l_uv), "userEnteredValue")
			end
		end
end
