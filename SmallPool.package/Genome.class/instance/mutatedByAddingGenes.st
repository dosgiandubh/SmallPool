evolutional-mutating
mutatedByAddingGenes
	"Returns a mutated copy that contains new genes"
	
	| addedBlockLength expandedGenes |
	
	addedBlockLength := 4.
	expandedGenes := self genes copy.
	
	addedBlockLength timesRepeat: [expandedGenes add: Gene random].
		
	^ Genome with: expandedGenes