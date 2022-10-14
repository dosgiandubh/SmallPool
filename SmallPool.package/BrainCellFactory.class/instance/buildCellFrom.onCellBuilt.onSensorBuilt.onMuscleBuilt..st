cell building
buildCellFrom: aGeneSequence onCellBuilt: onCellBuiltBlock onSensorBuilt: onSensorBuiltBlock onMuscleBuilt: onMuscleBuiltBlock
	"Builds a cell using the given sequence. On successful creation calls one or more given blocks to notify the caller about that cell"
	
	self shouldBeImplemented