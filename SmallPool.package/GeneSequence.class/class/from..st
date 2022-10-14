instance creation
from: aGenome
	"Creates a sequence based on the given genome"
	
	^ self new
		genes: aGenome genes;
		yourself
	