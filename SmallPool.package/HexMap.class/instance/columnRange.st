accessing
columnRange
	"Returns a range from the smallest column to the biggest column, of nil if there is no items"

	| minColumn maxColumn |

	items isEmpty ifTrue: [^ nil].
	
	minColumn := nil.
	maxColumn := nil.
	
	items keys do: [:index | 
		(maxColumn isNil or: [maxColumn < index column])
			ifTrue: [maxColumn := index column].
		(minColumn isNil or: [minColumn > index column])
			ifTrue: [minColumn := index column]].

	^ minColumn to: maxColumn