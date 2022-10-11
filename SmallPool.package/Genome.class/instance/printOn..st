debugging
printOn: aStream

	aStream nextPutAll: 'Genome('.
	self genes do: [:each | each printOn: aStream].
	aStream nextPut: $)