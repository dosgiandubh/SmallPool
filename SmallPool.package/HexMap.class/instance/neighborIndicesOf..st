accessing
neighborIndicesOf: anIndex
	"Returns all indices that are neighbors of the given index, even without values"

	| row column nearColumnRowOffset |
	
	row := anIndex row.
	column := anIndex column.
	
	"Because of the hexagonal nature of the map, neighbor indices have 0.5 offsets comparing to the given index"
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