note
	description: "[
	Data about a specific cell.
	
		{
		  "userEnteredValue": {
		    object (ExtendedValue)
		  },
		  "effectiveValue": {
		    object (ExtendedValue)
		  },
		  "formattedValue": string,
		  "userEnteredFormat": {
		    object (CellFormat)
		  },
		  "effectiveFormat": {
		    object (CellFormat)
		  },
		  "hyperlink": string,
		  "note": string,
		  "textFormatRuns": [
		    {
		      object (TextFormatRun)
		    }
		  ],
		  "dataValidation": {
		    object (DataValidationRule)
		  },
		  "pivotTable": {
		    object (PivotTable)
		  }
		}
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=CellData", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/cells#CellData", "protocol=uri"

class
	EG_CELL_DATA

feature -- Access

	user_entered_value: detachable EG_EXTENDED_VALUE
			-- The value the user entered in the cell. e.g, 1234 , 'Hello' , or =NOW()
			-- Note: Dates, Times and DateTimes are represented as doubles in serial number format.

	effective_value: detachable EG_EXTENDED_VALUE
			-- The effective value of the cell. For cells with formulas, this is the calculated value.
			-- For cells with literals, this is the same as the userEnteredValue. This field is read-only.

	formatted_value: detachable STRING
			-- The formatted value of the cell. This is the value as it's shown to the user. This field is read-only.


	user_entered_format: detachable EG_CELL_FORMAT
			-- The format the user entered for the cell.
			-- When writing, the new format will be merged with the existing format.

	effective_format: detachable EG_CELL_FORMAT
			-- The effective format being used by the cell.
			-- This includes the results of applying any conditional formatting and, if the cell contains a formula, the computed number format.
			-- If the effective format is the default format, effective format will not be written. This field is read-only.

	hyperlink: detachable STRING
			-- A hyperlink this cell points to, if any.
			-- This field is read-only. (To set it, use a =HYPERLINK formula in the userEnteredValue.formulaValue field.)

	note_: detachable STRING
			-- Any note on the cell.


	text_format_runs: detachable LIST [EG_TEXT_FORMAT_RUN]
			-- Runs of rich text applied to subsections of the cell.
			-- Runs are only valid on user entered strings, not formulas, bools, or numbers.
			-- Runs start at specific indexes in the text and continue until the next run.
			-- Properties of a run will continue unless explicitly changed in a subsequent run (and properties of the first run will continue the properties of the cell unless explicitly changed).
            --
			-- When writing, the new runs will overwrite any prior runs. When writing a new userEnteredValue , previous runs are erased.

	data_validation: detachable EG_DATA_VALIDATION_RULE
			-- A data validation rule on the cell, if any.
			-- When writing, the new data validation rule will overwrite any prior rule.

	pivot_table: detachable EG_PIVOT_TABLE
			-- A pivot table anchored at this cell.
			-- The size of pivot table itself is computed dynamically based on its data, grouping, filters, values, etc.
			-- Only the top-left cell of the pivot table contains the pivot table definition.
			-- The other cells will contain the calculated values of the results of the pivot in their effectiveValue fields.

feature -- Element Change

	set_user_entered_value (a_val: like user_entered_value)
			-- Set `user_entered_value` with `a_val`.
		do
			user_entered_value := a_val
		ensure
			user_entered_value_set: user_entered_value = a_val
		end

	set_effective_value (a_val: like effective_value)
		do
			effective_value := a_val
		ensure
			effective_value_set: effective_value = a_val
		end

	set_formatted_value (a_val: like formatted_value)
		do
			formatted_value := a_val
		ensure
			formatted_value_set: formatted_value = a_val
		end

	set_user_entered_format (a_val: like user_entered_format)
		do
			user_entered_format := a_val
		ensure
			user_entered_format_set: user_entered_format = a_val
		end

	set_effective_format (a_val: like effective_format)
		do
			effective_format := a_val
		ensure
			effective_format_set: effective_format = a_val
		end

	set_hyperlink (a_val: like hyperlink)
		do
			hyperlink := a_val
		ensure
			hyperlink_set: hyperlink = a_val
		end

	set_note (a_val: like note_)
		do
			note_ := a_val
		ensure
			note_set: note_ = a_val
		end

	force_text_format_runs (a_text_format_run: EG_TEXT_FORMAT_RUN)
			-- Add item `a_text_format_run` to the list `text_format_runs`
		local
			l_text_format_runs: like text_format_runs
		do
			l_text_format_runs := text_format_runs
			if l_text_format_runs /= Void then
				l_text_format_runs.force (a_text_format_run)
			else
				create {ARRAYED_LIST [EG_TEXT_FORMAT_RUN]} l_text_format_runs.make (5)
				l_text_format_runs.force (a_text_format_run)
			end
			text_format_runs := l_text_format_runs
		end

	set_data_validation (a_data_validation: like data_validation)
		do
			data_validation := a_data_validation
		ensure
			data_validation_set: a_data_validation = data_validation
		end

	set_pivot_table (a_pivot_table: like pivot_table)
		do
			pivot_table := a_pivot_table
		ensure
			pivot_table_set: pivot_table = a_pivot_table
		end

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
			-- JSON representation of the current object.
		local
			l_array: JSON_ARRAY
		do
			create Result.make_empty
			if attached user_entered_value as l_uev then
				Result.put (l_uev.to_json, "userEnteredValue")
			end
			if attached effective_format as l_ef then
				Result.put (l_ef.to_json, "effectiveValue" )
			end
			if attached formatted_value as l_fm then
				Result.put (create {JSON_STRING}.make_from_string (l_fm), "formattedValue")
			end
			if attached user_entered_format as l_format then
				Result.put (l_format.to_json, "userEnteredFormat")
			end
			if attached effective_format as l_effective_format then
				Result.put (l_effective_format.to_json, "effectiveFormat")
			end
			if attached hyperlink as l_hyperlink then
				Result.put (create {JSON_STRING}.make_from_string (l_hyperlink), "hyperlink")
			end
			if attached note_ as l_note then
				Result.put (create {JSON_STRING}.make_from_string (l_note), "note")
			end
			if attached text_format_runs as l_runs then
				create l_array.make (l_runs.count)
				across l_runs as ic loop
					l_array.add (ic.item.to_json)
				end
				Result.put (l_array, "textFormatRuns")
			end
			if attached data_validation as l_validation then
				Result.put (l_validation.to_json, "dataValidation")
			end
			if attached pivot_table as l_pivot_table then
				Result.put (l_pivot_table.to_json, "pivotTable")
			end
		end

end
