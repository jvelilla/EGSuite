note
	description: "[
	The type of error. 
	
	ERROR_TYPE_UNSPECIFIED 	The default error type, do not use this.
	ERROR 					Corresponds to the #ERROR! error.
	NULL_VALUE 				Corresponds to the #NULL! error.
	DIVIDE_BY_ZERO 			Corresponds to the #DIV/0 error.
	VALUE 					Corresponds to the #VALUE! error.
	REF 					Corresponds to the #REF! error.
	NAME 					Corresponds to the #NAME? error.
	NUM 					Corresponds to the #NUM! error.
	N_A 					Corresponds to the #N/A error.
	LOADING 				Corresponds to the Loading... state.
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name- Error Type", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/other#errortype", "protocol=uri"
class
	EG_ERROR_TYPE

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
			set_value (error_type_unspecified)
		end

	error_type_unspecified: INTEGER = 1
			-- The default error type, do not use this.

	error: INTEGER = 2
			-- Corresponds to the #ERROR! error.

	null_value: INTEGER = 3
			-- Corresponds to the #NULL! error.

	divide_by_zero: INTEGER = 4
			-- Corresponds to the #DIV/0 error.	

	evalue: INTEGER = 5
			-- Corresponds to the #VALUE! error.		

	ref: INTEGER = 6
			-- Corresponds to the #REF! error.

	name: INTEGER = 7
			-- Corresponds to the #NAME? error.

	num: INTEGER = 10
			-- Corresponds to the #NUM! error.		

	n_a: INTEGER = 8
			-- Corresponds to the #N/A error.

	loading: INTEGER = 9
			-- Corresponds to the Loading... state.

feature -- Change Elements

	set_error
		do
			set_value (error)
		ensure
			value_set_with_error: value = error
		end

	set_null_value
		do
			set_value (null_value)
		ensure
			value_set_with_null_value: value = null_value
		end

	set_divide_by_zero
		do
			set_value (divide_by_zero)
		ensure
			value_set_with_divide_by_zero: value = divide_by_zero
		end

	set_evalue
		do
			set_value (evalue)
		ensure
			value_set_with_evalue: value = evalue
		end

	set_ref
		do
			set_value (ref)
		ensure
			value_set_with_ref: value = ref
		end

	set_name
		do
			set_value (name)
		ensure
			value_set_with_name: value = name
		end

	set_num
		do
			set_value (num)
		ensure
			value_set_with_num: value = num
		end

	set_n_a
		do
			set_value (n_a)
		ensure
			value_set_with_n_a: value = n_a
		end

	set_loading
		do
			set_value (loading)
		ensure
			value_set_with_loading: value = loading
		end


feature -- Status Report

	is_error: BOOLEAN
		do
			Result := value = error
		end

	is_null_value: BOOLEAN
		do
			Result := value = null_value
		end

	is_divide_by_zero: BOOLEAN
		do
			Result := value = divide_by_zero
		end

	is_evalue: BOOLEAN
		do
			Result := value = evalue
		end

	is_ref: BOOLEAN
		do
			Result := value = ref
		end

	is_name: BOOLEAN
		do
			Result := value = name
		end

	is_num: BOOLEAN
		do
			Result := value = num
		end

	is_n_a: BOOLEAN
		do
			Result := value = n_a
		end

	is_loading: BOOLEAN
		do
			Result := value = loading
		end

	is_valid_value (a_value: INTEGER): BOOLEAN
			-- Can `a_value' be used in a `set_value' feature call?
		do
			Result := a_value = error_type_unspecified or else
			          a_value = error or else
			          a_value = null_value or else
			          a_value = divide_by_zero or else
			          a_value = evalue or else
			          a_value = ref or else
			          a_value = name or else
			          a_value = num or else
			          a_value = n_a or else
			          a_value = loading
		end


feature -- Eiffel to JSON

	to_json: JSON_STRING
			-- JSon representation of current object.
		do
			if is_error then
				Result := "ERROR"
			elseif is_null_value then
				Result := "NULL_VALUE"
			elseif is_divide_by_zero then
				Result := "DIVIDE_BY_ZERO"
			elseif is_evalue then
				Result := "VALUE"
			elseif is_ref then
				Result := "REF"
			elseif is_name then
				Result := "NAME"
			elseif is_num then
				Result := "NUM"
			elseif is_n_a then
				Result := "N_A"
			elseif is_loading then
				Result := "LOADING"
			else
				Result := "ERROR_TYPE_UNSPECIFIED"
			end
		end
end
