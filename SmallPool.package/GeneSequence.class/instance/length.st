testing
length
	"Returns the number of unread genes"
	
	^ genes size - (nextToReadIndex - 1)