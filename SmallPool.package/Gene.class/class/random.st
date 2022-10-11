instance creation
random
	"Returns a random gene"

	| genes |
	
	genes := Array with: A new with: B new with: C new with: D new.
	
	^ genes at: (genes size random)