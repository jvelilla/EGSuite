note
	description: "[
		A pivot tab
		
	{
	  "rows": [
	    {
	      object (PivotGroup)
	    }
	  ],
	  "columns": [
	    {
	      object (PivotGroup)
	    }
	  ],
	  "criteria": {
	    string: {
	      object(PivotFilterCriteria)
	    },
	    ...
	  },
	  "values": [
	    {
	      object (PivotValue)
	    }
	  ],
	  "valueLayout": enum (PivotValueLayout),
	  "source": {
	    object (GridRange)
	  }
	}
	]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=PivotTable", "src=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/pivot-tables#pivottable", "protocol=uri"

class
	EG_PIVOT_TABLE

feature -- Access

	rows: detachable LIST [EG_PIVOT_GROUP]
		-- Each row grouping in the pivot table.


	columns: detachable LIST [EG_PIVOT_GROUP]
		-- Each column grouping in the pivot table.

	criteria: detachable HASH_TABLE [EG_PIVOT_FILTER_CRITERIA, INTEGER]
		--  An optional mapping of filters per source column offset.
		-- The filters are applied before aggregating data into the pivot table.
		-- The map's key is the column offset of the source range that you want to filter, and the value is the criteria for that column.
		-- For example, if the source was C10:E15 , a key of 0 will have the filter for column C , whereas the key 1 is for column D .

	values: detachable LIST [EG_PIVOT_VALUE]
		-- A list of values to include in the pivot table.

	value_layout: detachable EG_PIVOT_VALUE_LAYOUT
		-- Whether values should be listed horizontally (as columns) or vertically (as rows).


	source: detachable EG_GRID_RANGE
		-- The range the pivot table is reading data from.

feature -- Element Change

	-- TO BE DONE

feature -- Eiffel to JSON

	to_json: JSON_OBJECT
		do
			create Result.make_empty
			-- TO BE DONE
		end
end
