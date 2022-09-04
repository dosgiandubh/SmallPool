instance creation
row: row column: column
	"Returns an initialized index with the given row and column"

	^ self new
		row: row;
		column: column;
		yourself.