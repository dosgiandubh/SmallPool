thinking
increaseEnergyBy: anInteger
	"Adds the given energy (the more number the more energy) to the current level of energy"
	
	self signal: (self signal + anInteger)