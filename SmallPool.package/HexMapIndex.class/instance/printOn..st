debugging
printOn: aStream
	
	rowOffset printOn: aStream.
	aStream nextPutAll: #@.
	columnOffset printOn: aStream.