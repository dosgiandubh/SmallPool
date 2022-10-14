reading
next: blockLength
	"Reads the next block of the given length. Throws an error if it does not contain the required amount of genes"
	
	| endBlockIndex startBlockIndex |
	
	(self hasUnread: blockLength)
		ifFalse: [self error: 'Sequence does not have ', blockLength asString, ' genes to read, only ', self length asString].
	
	startBlockIndex := nextToReadIndex.
	endBlockIndex := startBlockIndex + blockLength - 1.
	nextToReadIndex := endBlockIndex + 1.
		
	^ genes copyFrom: startBlockIndex to: endBlockIndex