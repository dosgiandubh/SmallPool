instance creation
random: length
	"Returns a genome consisting of the given number of randomly picked genes"
	
	| genes |
	
	genes := OrderedCollection new: length.
	
	1 to: length do: [:index | genes add: Gene random].
	
	^ self with: genes