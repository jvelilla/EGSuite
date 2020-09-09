note
	description: "[
	The type of condition. 
	
	Enums
	CONDITION_TYPE_UNSPECIFIED	The default value, do not use.
	NUMBER_GREATER				The cell's value must be greater than the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	NUMBER_GREATER_THAN_EQ		The cell's value must be greater than or equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	NUMBER_LESS					The cell's value must be less than the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	NUMBER_LESS_THAN_EQ			The cell's value must be less than or equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	NUMBER_EQ					The cell's value must be equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	NUMBER_NOT_EQ				The cell's value must be not equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	NUMBER_BETWEEN				The cell's value must be between the two condition values. Supported by data validation, conditional formatting and filters. Requires exactly two ConditionValues .
	NUMBER_NOT_BETWEEN			The cell's value must not be between the two condition values. Supported by data validation, conditional formatting and filters. Requires exactly two ConditionValues .
	TEXT_CONTAINS				The cell's value must contain the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	TEXT_NOT_CONTAINS			The cell's value must not contain the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	TEXT_STARTS_WITH			The cell's value must start with the condition's value. Supported by conditional formatting and filters. Requires a single ConditionValue .
	TEXT_ENDS_WITH				The cell's value must end with the condition's value. Supported by conditional formatting and filters. Requires a single ConditionValue .
	TEXT_EQ						The cell's value must be exactly the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	TEXT_IS_EMAIL				The cell's value must be a valid email address. Supported by data validation. Requires no ConditionValues .
	TEXT_IS_URL					The cell's value must be a valid URL. Supported by data validation. Requires no ConditionValues .
	DATE_EQ						The cell's value must be the same date as the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	DATE_BEFORE					The cell's value must be before the date of the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue that may be a relative date .
	DATE_AFTER					The cell's value must be after the date of the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue that may be a relative date .
	DATE_ON_OR_BEFORE			The cell's value must be on or before the date of the condition's value. Supported by data validation. Requires a single ConditionValue that may be a relative date .
	DATE_ON_OR_AFTER			The cell's value must be on or after the date of the condition's value. Supported by data validation. Requires a single ConditionValue that may be a relative date .
	DATE_BETWEEN				The cell's value must be between the dates of the two condition values. Supported by data validation. Requires exactly two ConditionValues .
	DATE_NOT_BETWEEN			The cell's value must be outside the dates of the two condition values. Supported by data validation. Requires exactly two ConditionValues .
	DATE_IS_VALID				The cell's value must be a date. Supported by data validation. Requires no ConditionValues .
	ONE_OF_RANGE				The cell's value must be listed in the grid in condition value's range. Supported by data validation. Requires a single ConditionValue , and the value must be a valid range in A1 notation.
	ONE_OF_LIST					The cell's value must be in the list of condition values. Supported by data validation. Supports any number of condition values , one per item in the list. Formulas are not supported in the values.
	BLANK						The cell's value must be empty. Supported by conditional formatting and filters. Requires no ConditionValues .
	NOT_BLANK					The cell's value must not be empty. Supported by conditional formatting and filters. Requires no ConditionValues .
	CUSTOM_FORMULA				The condition's formula must evaluate to true. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue .
	BOOLEAN						The cell's value must be TRUE/FALSE or in the list of condition values. Supported by data validation. Renders as a cell checkbox. Supports zero, one or two ConditionValues . No values indicates the cell must be TRUE or FALSE, where TRUE renders as checked and FALSE renders as unchecked. One value indicates the cell will render as checked when it contains that value and unchecked when it is blank. Two values indicate that the cell will render as checked when it contains the first value and unchecked when it contains the second value. For example, ["Yes","No"] indicates that the cell will render a checked box when it has the value "Yes" and an unchecked box when it has the value "No".

	]"

	date: "$Date$"
	revision: "$Revision$"
	EIS: "name= Condition type", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/other#conditiontype", "protocol=uri"
class
	EG_CONDITION_TYPE


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
			set_value (condition_type_unspecified)
		end

	condition_type_unspecified: INTEGER = 1
			--Default value, do not use.

	number_greater: INTEGER = 2
			-- The cell's value must be greater than the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	number_greater_than_eq: INTEGER = 3
			-- The cell's value must be greater than or equal to the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	number_less: INTEGER = 4
			-- The cell's value must be less than the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	number_less_than_eq: INTEGER = 5
			-- The cell's value must be less than or equal to the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	number_eq: INTEGER = 6
			-- The cell's value must be equal to the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	number_not_eq: INTEGER = 7
			-- The cell's value must be not equal to the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	number_between: INTEGER = 8
			-- The cell's value must be between the two condition values. Supported by data validation, conditional formatting and filters.
			-- Requires exactly two ConditionValues.

	number_not_between: INTEGER = 9
			-- The cell's value must not be between the two condition values. Supported by data validation, conditional formatting and filters.
			-- Requires exactly two ConditionValues .

	text_contains: INTEGER = 10
			-- The cell's value must contain the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	text_not_contains: INTEGER = 11
			-- The cell's value must not contain the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	text_starts_with: INTEGER = 12
			-- The cell's value must start with the condition's value. Supported by conditional formatting and filters.
			-- Requires a single ConditionValue.

	text_ends_with: INTEGER = 13
			-- The cell's value must end with the condition's value. Supported by conditional formatting and filters.
			-- Requires a single ConditionValue.

	text_eq: INTEGER = 14
			-- The cell's value must be exactly the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	text_is_email: INTEGER = 15
			-- The cell's value must be a valid email address. Supported by data validation.
			-- Requires no ConditionValues.

	text_is_url: INTEGER = 16
			-- The cell's value must be a valid URL. Supported by data validation.
			-- Requires no ConditionValues.

	date_eq: INTEGER = 17
			-- The cell's value must be the same date as the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	date_before: INTEGER = 18
			-- The cell's value must be before the date of the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue that may be a relative date.

	date_after: INTEGER = 19
			-- The cell's value must be after the date of the condition's value. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue that may be a relative date.

	date_on_or_before: INTEGER = 20
			-- The cell's value must be on or before the date of the condition's value. Supported by data validation.
			-- Requires a single ConditionValue that may be a relative date.

	date_on_or_after: INTEGER = 21
			-- The cell's value must be on or after the date of the condition's value. Supported by data validation.
			-- Requires a single ConditionValue that may be a relative date .

	date_between: INTEGER = 22
			-- The cell's value must be between the dates of the two condition values. Supported by data validation.
			-- Requires exactly two ConditionValues.

	date_not_between: INTEGER = 23
			-- The cell's value must be outside the dates of the two condition values. Supported by data validation.
			-- Requires exactly two ConditionValues.

	date_is_valid: INTEGER = 24
			-- The cell's value must be a date. Supported by data validation.
			-- Requires no ConditionValues.

	one_of_range: INTEGER = 25
			-- The cell's value must be listed in the grid in condition value's range. Supported by data validation.
			--  Requires a single ConditionValue , and the value must be a valid range in A1 notation.

	one_of_list: INTEGER = 26
			-- The cell's value must be in the list of condition values. Supported by data validation. Supports any number of condition values , one per item in the list.
			-- Formulas are not supported in the values.

	blank: INTEGER = 27
			-- The cell's value must be empty. Supported by conditional formatting and filters.
			-- Requires no ConditionValues.

	not_blank: INTEGER = 28
			-- The cell's value must not be empty. Supported by conditional formatting and filters.
			-- Requires no ConditionValues.

	custom_formula: INTEGER = 29
			-- The condition's formula must evaluate to true. Supported by data validation, conditional formatting and filters.
			-- Requires a single ConditionValue.

	boolean_: INTEGER = 30
			-- The cell's value must be TRUE/FALSE or in the list of condition values. Supported by data validation. Renders as a cell checkbox. Supports zero, one or two ConditionValues .
			-- No values indicates the cell must be TRUE or FALSE, where TRUE renders as checked and FALSE renders as unchecked. One value indicates the cell will render as checked when it contains that value and unchecked when it is blank.
			-- Two values indicate that the cell will render as checked when it contains the first value and unchecked when it contains the second value.
			-- For example, ["Yes","No"] indicates that the cell will render a checked box when it has the value "Yes" and an unchecked box when it has the value "No".



feature -- Change Elements

	set_number_greater
		do
			set_value (number_greater)
		ensure
			value_set_with_number_greater: value = number_greater
		end

	set_number_greater_than_eq
		do
			set_value (number_greater_than_eq)
		ensure
			value_set_with_number_greater_than_eq: value = number_greater_than_eq
		end

	set_number_less
		do
			set_value (number_less)
		ensure
			value_set_with_number_less: value = number_less
		end

	set_number_less_than_eq
		do
			set_value (number_less_than_eq)
		ensure
			value_set_with_number_less_than_eq: value = number_less_than_eq
		end

	set_number_eq
		do
			set_value (number_eq)
		ensure
			value_set_with_number_eq: value = number_eq
		end

	set_number_not_eq
		do
			set_value (number_not_eq)
		ensure
			value_set_with_number_not_eq: value = number_not_eq
		end

	set_number_between
		do
			set_value (number_between)
		ensure
			value_set_with_number_between: value = number_between
		end

	set_number_not_between
		do
			set_value (number_not_between)
		ensure
			value_set_with_number_not_between: value = number_not_between
		end

	set_text_contains
		do
			set_value (text_contains)
		ensure
			value_set_with_text_contains: value = text_contains
		end

	set_text_not_contains
		do
			set_value (text_not_contains)
		ensure
			value_set_with_text_not_contains: value = text_not_contains
		end

	set_text_starts_with
		do
			set_value (text_starts_with)
		ensure
			value_set_with_text_starts_with: value = text_starts_with
		end

	set_text_ends_with
		do
			set_value (text_ends_with)
		ensure
			value_set_with_text_ends_with: value = text_ends_with
		end

	set_text_eq
		do
			set_value (text_eq)
		ensure
			value_set_with_text_eq: value = text_eq
		end

	set_text_is_email
		do
			set_value (text_is_email)
		ensure
			value_set_with_text_is_email: value = text_is_email
		end

	set_text_is_url
		do
			set_value (text_is_url)
		ensure
			value_set_with_text_is_url: value = text_is_url
		end

	set_date_eq
		do
			set_value (date_eq)
		ensure
			value_set_with_date_eq: value = date_eq
		end

	set_date_before
		do
			set_value (date_before)
		ensure
			value_set_with_date_before: value = date_before
		end

	set_date_after
		do
			set_value (date_after)
		ensure
			value_set_with_date_after: value = date_after
		end

	set_date_on_or_before
		do
			set_value (date_on_or_before)
		ensure
			value_set_with_date_on_or_before: value = date_on_or_before
		end

	set_date_on_or_after
		do
			set_value (date_on_or_after)
		ensure
			value_set_with_date_on_or_after: value = date_on_or_after
		end

	set_date_between
		do
			set_value (date_between)
		ensure
			value_set_with_date_between: value = date_between
		end

	set_date_not_between
		do
			set_value (date_not_between)
		ensure
			value_set_with_date_not_between: value = date_not_between
		end

	set_date_is_valid
		do
			set_value (date_is_valid)
		ensure
			value_set_with_date_is_valid: value = date_is_valid
		end

	set_one_of_range
		do
			set_value (one_of_range)
		ensure
			value_set_with_one_of_range: value = one_of_range
		end

	set_one_of_list
		do
			set_value (one_of_list)
		ensure
			value_set_with_one_of_list: value = one_of_list
		end

	set_blank
		do
			set_value (blank)
		ensure
			value_set_with_blank: value = blank
		end

	set_not_blank
		do
			set_value (not_blank)
		ensure
			value_set_with_not_blank: value = not_blank
		end

	set_custom_formula
		do
			set_value (custom_formula)
		ensure
			value_set_with_not_blank: value = custom_formula
		end

	set_boolean
		do
			set_value (boolean_)
		ensure
			value_set_with_boolean: value = boolean_
		end

feature -- Status Report

	is_number_greater: BOOLEAN
		do
			Result := value = number_greater
		end

	is_number_greater_than_eq: BOOLEAN
		do
			Result := value = number_greater_than_eq
		end

	is_number_less: BOOLEAN
		do
			Result := value = number_less
		end

	is_number_less_than_eq: BOOLEAN
		do
			Result := value = number_less_than_eq
		end

	is_number_eq: BOOLEAN
		do
			Result := value = number_eq
		end

	is_number_not_eq: BOOLEAN
		do
			Result := value = number_not_eq
		end

	is_number_between: BOOLEAN
		do
			Result := value = number_between
		end

	is_number_not_between: BOOLEAN
		do
			Result := value = number_not_between
		end

	is_text_contains: BOOLEAN
		do
			Result := value = text_contains
		end

	is_text_not_contains: BOOLEAN
		do
			Result := value = text_not_contains
		end

	is_text_starts_with: BOOLEAN
		do
			Result := value = text_starts_with
		end

	is_text_ends_with: BOOLEAN
		do
			Result := value = text_ends_with
		end

	is_text_eq: BOOLEAN
		do
			Result := value = text_eq
		end

	is_text_is_email: BOOLEAN
		do
			Result := value = text_is_email
		end

	is_text_is_url: BOOLEAN
		do
			Result := value = text_is_url
		end

	is_date_eq: BOOLEAN
		do
			Result := value = date_eq
		end

	is_date_before: BOOLEAN
		do
			Result := value = date_before
		end

	is_date_after: BOOLEAN
		do
			Result := value = date_after
		end

	is_date_on_or_before: BOOLEAN
		do
			Result := value = date_on_or_before
		end

	is_date_on_or_after: BOOLEAN
		do
			Result := value = date_on_or_after
		end

	is_date_between: BOOLEAN
		do
			Result := value = date_between
		end

	is_date_not_between: BOOLEAN
		do
			Result := value = date_not_between
		end

	is_date_is_valid: BOOLEAN
		do
			Result := value = date_is_valid
		end

	is_one_of_range: BOOLEAN
		do
			Result := value = one_of_range
		end

	is_one_of_list: BOOLEAN
		do
			Result := value = one_of_list
		end

	is_blank: BOOLEAN
		do
			Result := value = blank
		end

	is_not_blank: BOOLEAN
		do
			Result := value = not_blank
		end

	is_custom_formula: BOOLEAN
		do
			Result := value = custom_formula
		end

	is_boolean: BOOLEAN
		do
			Result := value = boolean_
		end


	is_valid_value (a_value: INTEGER): BOOLEAN
			-- Can `a_value' be used in a `set_value' feature call?
		do
			Result := a_value = condition_type_unspecified or else
			          a_value = number_greater or else
			          a_value = number_greater_than_eq or else
			          a_value = number_less or else
			          a_value = number_less_than_eq or else
			          a_value = number_eq or else
			          a_value = number_not_eq or else
			          a_value = number_between or else
			          a_value = number_not_between or else
			          a_value = text_contains or else
			          a_value = text_not_contains or else
			          a_value = text_starts_with or else
			          a_value = text_ends_with or else
			          a_value = text_eq or else
			          a_value = text_is_email or else
			          a_value = text_is_url or else
			          a_value = date_eq or else
			          a_value = date_before or else
			          a_value = date_after or else
			          a_value = date_on_or_before or else
			          a_value = date_on_or_after or else
			          a_value = date_between or else
			          a_value = date_not_between or else
			          a_value = date_is_valid or else
			          a_value = one_of_range or else
			          a_value = one_of_list or else
			          a_value = blank or else
			          a_value = not_blank or else
			          a_value = custom_formula or else
			          a_value = boolean_
		end

feature -- Eiffel to JSON

	to_json: JSON_STRING
			-- JSon representation of current object.
		do
			if is_number_greater then
				Result := "NUMBER_GREATER"
			elseif is_number_greater_than_eq then
				Result := "NUMBER_GREATER_THAN_EQ"
			elseif is_number_less then
				Result := "NUMBER_LESS"
			elseif is_number_less_than_eq then
				Result := "NUMBER_LESS_THAN_EQ"
			elseif is_number_eq then
				Result := "NUMBER_EQ"
			elseif is_number_not_eq then
				Result := "NUMBER_NOT_EQ"
			elseif is_number_between then
				Result := "NUMBER_BETWEEN"
			elseif is_number_not_between then
				Result := "NUMBER_NOT_BETWEEN"
			elseif is_text_contains then
				Result := "TEXT_CONTAINS"
			elseif is_text_not_contains then
				Result := "TEXT_NOT_CONTAINS"
			elseif is_text_starts_with then
				Result := "TEXT_STARTS_WITH"
			elseif is_text_ends_with then
				Result := "TEXT_ENDS_WITH"
			elseif is_text_eq then
				Result := "TEXT_EQ"
			elseif is_text_is_email then
				Result := "TEXT_IS_EMAIL"
			elseif is_text_is_url then
				Result := "TEXT_IS_URL"
			elseif is_date_eq then
				Result := "DATE_EQ"
			elseif is_date_before then
				Result := "DATE_BEFORE"
			elseif is_date_after then
				Result := "DATE_AFTER"
			elseif is_date_on_or_before then
				Result := "DATE_ON_OR_BEFORE"
			elseif is_date_on_or_after then
				Result := "DATE_ON_OR_AFTER"
			elseif is_date_between then
				Result := "DATE_BETWEEN"
			elseif is_date_not_between then
				Result := "DATE_NOT_BETWEEN"
			elseif is_date_is_valid then
				Result := "DATE_IS_VALID"
			elseif is_one_of_range then
				Result := "ONE_OF_RANGE"
			elseif is_one_of_list then
				Result := "ONE_OF_LIST"
			elseif is_blank then
				Result := "BLANK"
			elseif is_not_blank then
				Result := "NOT_BLANK"
			elseif is_custom_formula then
				Result := "CUSTOM_FORMULA"
			elseif is_boolean then
				Result := "BOOLEAN"
			else
				Result := "CONDITION_TYPE_UNSPECIFIED"
			end
		end

end
