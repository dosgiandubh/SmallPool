accessing
rowRange
	"Returns a range from the smallest row to the biggest row, or nil if there is no items"

	| maxRow minRow |

	items isEmpty ifTrue: [^ nil].
	
	maxRow := nil.
	minRow := nil.
	
	items keys do: [:index | 
		(maxRow isNil or: [maxRow < index row])
			ifTrue: [maxRow := index row].
		(minRow isNil or: [minRow > index row])
			ifTrue: [minRow := index row]].

	^ minRow to: maxRow