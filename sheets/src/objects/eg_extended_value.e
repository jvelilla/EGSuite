note
	description: "[
	
	The kinds of value that a cell in a spreadsheet can have. 	
	{

	  // Union field value can be only one of the following:
	  "numberValue": number,
	  "stringValue": string,
	  "boolValue": boolean,
	  "formulaValue": string,
	  "errorValue": {
	    object (ErrorValue)
	  }
	  // End of list of possible types for union field value.
	}

	]"
	date: "$Date$"
	revision: "$Revision$"

class
	EG_EXTENDED_VALUE


feature -- Access

	number_value: REAL
			-- Represents a double value.
			-- Note: Dates, Times and DateTimes are represented as doubles in "serial number" format.

	string_value: detachable STRING
			-- Represents a string value. Leading single quotes are not included.
			-- For example, if the user typed '123 into the UI, this would be represented as a stringValue of "123".

	bool_value: BOOLEAN
			-- Represents a boolean value.

	formula_value: detachable STRING
			-- Represents a formula.

	error_value: detachable EG_ERROR_VALUE
			-- Represents an error. This field is read-only. 						

feature -- Status Report

	is_number_value: BOOLEAN
			-- Is the current value a number?

	is_string_value: BOOLEAN
			-- Is the current value an string?

	is_bool_value: BOOLEAN
			-- Is the current value a boolean?

	is_formula_value: BOOLEAN
			-- Is the current value a formula?

	is_error_value: BOOLEAN
			-- Is the current value an error value?

feature -- Element Change

	set_number_value (a_value: like number_value)
			-- Set `number_value` with `a_vaue`?
		do
			is_number_value := True
			is_string_value := False
			is_bool_value   := False
			is_formula_value:= False
			is_error_value  := False

			number_value := a_value
		ensure
			number_value_set: number_value = a_value
			union_field_number: is_number_value implies
							( is_string_value = False and then is_bool_value = False and then is_formula_value = False and then is_error_value = False)
		end

	set_string_value (a_value: like string_value)
			-- Set `string_value` with `a_vaue`?
		do
			is_number_value := False
			is_string_value := True
			is_bool_value   := False
			is_formula_value:= False
			is_error_value  := False

			string_value := a_value
		ensure
			string_value_set: string_value = a_value
			union_field_string: is_string_value implies
							( is_number_value = False and then is_bool_value = False and then is_formula_value = False and then is_error_value = False)
		end

	set_bool_value (a_value: like bool_value)
			-- Set `bool_value` with `a_vaue`?
		do
			is_number_value := False
			is_string_value := False
			is_bool_value   := True
			is_formula_value:= False
			is_error_value  := False

			bool_value := a_value
		ensure
			bool_value_set: bool_value = a_value
			union_field_bool: is_bool_value implies
							( is_number_value = False and then is_string_value = False and then is_formula_value = False and then is_error_value = False)
		end

	set_formula_value (a_value: like formula_value)
			-- Set `formula_value` with `a_vaue`?
		do
			is_number_value := False
			is_string_value := False
			is_bool_value   := False
			is_formula_value:= True
			is_error_value  := False

			formula_value := a_value
		ensure
			formula_value_set: formula_value = a_value
			union_field_formula: is_formula_value implies
							( is_number_value = False and then is_string_value = False and then is_bool_value = False and then is_error_value = False)
		end

	set_error_value (a_value: like error_Value)
			-- Set `error_value` with `a_vaue`?
		do
			is_number_value := False
			is_string_value := False
			is_bool_value   := False
			is_formula_value:= False
			is_error_value  := True

			error_value := a_value
		ensure
			error_value_set: error_value = a_value
			union_field_error: is_error_value implies
							( is_number_value = False and then is_string_value = False and then is_bool_value = False and then is_formula_value = False)
		end

	reset
			-- Set fields to defaults.
		do
			number_value  := 0
			string_value  := Void
			bool_value    := False
			formula_value := Void
			error_value	  := Void
		end

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
			-- Json representation of the current object.
		do
			create Result.make_empty
			if is_number_value then
				Result.put (create {JSON_NUMBER}.make_real (number_value), "numberValue")
			elseif is_string_value and then attached string_value as l_sv then
				Result.put (create {JSON_STRING}.make_from_string (l_sv), "stringValue")
			elseif is_bool_value then
				Result.put (create {JSON_BOOLEAN}.make (bool_value), "boolValue")
			elseif is_formula_value and then attached formula_value as l_fv then
				Result.put (create {JSON_STRING}.make_from_string (l_fv), "formulaValue")
			elseif attached error_value as l_ev then
				Result.put (l_ev.to_json, "errorValue")
			end
		end


-- todo add invariant.
end
