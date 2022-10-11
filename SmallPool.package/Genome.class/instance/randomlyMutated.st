evolutional-mutating
randomlyMutated
	"Returns a mutated genome changed randomly"

	| mutations |
	
	mutations := Array 
		with: [self mutatedByAddingGenes]
		with: [self mutatedByLosingGenes]
		with: [self mutatedByReplacingGenes].
		
	^ (mutations at: mutations size random) value