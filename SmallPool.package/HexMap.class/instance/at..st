accessing
at: anIndex
	"Returns an element stored at this index, if exists"

	^ items at: anIndex ifAbsent: [nil]