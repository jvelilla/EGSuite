note
	description: "[
	Controls how a date condition is evaluated.

	RELATIVE_DATE_UNSPECIFIED	Default value, do not use.
	PAST_YEAR					The value is one year before today.
	PAST_MONTH					The value is one month before today.
	PAST_WEEK					The value is one week before today.
	YESTERDAY					The value is yesterday.
	TODAY						The value is today.
	TOMORROW					The value is tomorrow.

	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Relative Date", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/other#relativedate", "protocol=uri"

class
	EG_RELATIVE_DATE

inherit

	EG_ENUM
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Initialization

	default_create
		do
			Precursor
			set_value (relative_date_unspecified)
		end

	relative_date_unspecified: INTEGER = 1
			--Default value, do not use.

	past_year: INTEGER = 2
			-- The value is one year before today.

	past_month: INTEGER = 3
			-- The value is one month before today.

	past_week: INTEGER = 4
			-- The value is one week before today.

	yesterday: INTEGER = 5
			-- The value is yesterday.

	today:	INTEGER = 6
			-- The value is today.

	tomorrow: INTEGER = 7
			-- The value is tomorrow.


feature -- Change Elements

	set_past_year
		do
			set_value (past_year)
		ensure
			value_set_with_past_year: value = past_year
		end

	set_past_month
		do
			set_value (past_month)
		ensure
			value_set_with_past_month: value = past_month
		end

	set_past_week
		do
			set_value (past_week)
		ensure
			value_set_with_past_week: value = past_week
		end

	set_yesterday
		do
			set_value (yesterday)
		ensure
			value_set_with_yesterday: value = yesterday
		end

	set_today
		do
			set_value (today)
		ensure
			value_set_with_today: value = today
		end

	set_tomorrow
		do
			set_value (tomorrow)
		ensure
			value_set_with_tomorrow: value = tomorrow
		end


feature -- Status Report

	is_past_year: BOOLEAN
		do
			Result := value = past_year
		end

	is_past_month: BOOLEAN
		do
			Result := value = past_month
		end

	is_past_week: BOOLEAN
		do
			Result := value = past_week
		end

	is_yesterday: BOOLEAN
		do
			Result := value = yesterday
		end

	is_today: BOOLEAN
		do
			Result := value = today
		end

	is_tomorrow: BOOLEAN
		do
			Result := value = tomorrow
		end

	is_valid_value (a_value: INTEGER): BOOLEAN
			-- Can `a_value' be used in a `set_value' feature call?
		do
			Result := a_value = relative_date_unspecified or else
			          a_value = past_year or else
			          a_value = past_month or else
			          a_value = past_week or else
			          a_value = yesterday or else
			          a_value = today or else
			          a_value = tomorrow
		end

feature -- Eiffel to JSON

	to_json: JSON_STRING
			-- JSon representation of current object.
		do
			if is_past_year then
				Result := "PAST_YEAR"
			elseif is_past_month then
				Result := "PAST_MONTH"
			elseif is_past_week then
				Result := "PAST_WEEK"
			elseif is_yesterday then
				Result := "YESTERDAY"
			elseif is_today then
				Result := "TODAY"
			elseif is_tomorrow then
				Result := "TOMORROW"
			else
				Result := "RELATIVE_DATE_UNSPECIFIED"
			end
		end
end
