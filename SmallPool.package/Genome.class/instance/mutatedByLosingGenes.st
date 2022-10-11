evolutional-mutating
mutatedByLosingGenes
	"Returns a mutated copy that has lost a random block of genes"
	
	| targetLength lostBlockLength shrunkenGenes lostBlockStartIndex |
	
	lostBlockLength := 4.
	
	self genes size <= lostBlockLength
		ifTrue: [^ Genome empty].
	
	targetLength := self genes size - lostBlockLength.
	
	shrunkenGenes := OrderedCollection new: targetLength.
	
	lostBlockStartIndex := targetLength random.
	
	1 to: genes size do: [:index | 
		((index >= lostBlockStartIndex) & (index < (lostBlockStartIndex + lostBlockLength)))
			ifFalse: [shrunkenGenes add: (self genes at: index)]].
		
	^ Genome with: shrunkenGenes