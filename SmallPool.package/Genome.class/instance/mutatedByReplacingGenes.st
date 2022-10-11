evolutional-mutating
mutatedByReplacingGenes
	"Returns a mutated copy that contains genes which were randomly changed by others"
	
	| numberOfMutations mutatedGenes |
	
	self genes isEmpty
		ifTrue: [^ self].
	
	numberOfMutations := 4.
	mutatedGenes := self genes copy.
	
	numberOfMutations 
		timesRepeat: [| mutatedGeneIndex originalGene |
			mutatedGeneIndex := mutatedGenes size random.
			originalGene := mutatedGenes at: mutatedGeneIndex.
			mutatedGenes at: mutatedGeneIndex put: originalGene randomlyMutated].
	
	^ Genome with: mutatedGenes