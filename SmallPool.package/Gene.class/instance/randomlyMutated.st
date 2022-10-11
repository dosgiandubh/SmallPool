evolutional-copying
randomlyMutated
	"Returns itself randomly mutated (changed to another gene)"
	
	| mutatedGene |
	
	mutatedGene := self.
	
	[mutatedGene = self]
		whileTrue: [mutatedGene := self class random].
		
	^ mutatedGene