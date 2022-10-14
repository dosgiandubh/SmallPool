testing
hasUnread: length
	"Answers if it contains at least the given number of genes"
	
	^ (genes size - nextToReadIndex + 1) >= length
	