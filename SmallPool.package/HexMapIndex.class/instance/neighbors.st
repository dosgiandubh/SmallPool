accessors
neighbors
	"Returns all adjacent indices"

	| row column nearColumnRowOffset |
	
	row := self row.
	column := self column.
	
	"Because of the hexagonal nature of the map, adjacent indices have 0.5 offset comparing to the given index"
	nearColumnRowOffset := column \\ 2 == 0
		ifTrue: [1]
		ifFalse: [0].

	^ OrderedCollection new
		add: (HexMapIndex row: row + 1 column: column);
		add: (HexMapIndex row: row + nearColumnRowOffset column: column + 1);
		add: (HexMapIndex row: row - 1 + nearColumnRowOffset column: column + 1);
		add: (HexMapIndex row: row - 1 column: column);
		add: (HexMapIndex row: row - 1 + nearColumnRowOffset column: column - 1);
		add: (HexMapIndex row: row + nearColumnRowOffset column: column - 1);
		yourself.