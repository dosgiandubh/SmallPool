instance creation
random: length
	"Returns a genome consisting of the given number of randomly picked genes"
	
	| genes |
	
	genes := OrderedCollection new: length.
	
	length timesRepeat: [genes add: Gene random].
	
	^ self with: genes