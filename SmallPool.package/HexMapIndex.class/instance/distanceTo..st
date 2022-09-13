comparing
distanceTo: anotherIndex
	"Returns the amount of tiles needed to go to reach the given index"
	
	| horizontalSteps compensatedVerticalMove verticalSteps interSectionCompensation |
	
	self row > anotherIndex row 
		ifTrue: [^ anotherIndex distanceTo: self].
		
	horizontalSteps := (self column - anotherIndex column) abs.
	
	"The simplest case, we do not need to calculate vertical move"
	self row = anotherIndex row
		ifTrue: [^ (self column - anotherIndex column) abs].
	
	horizontalSteps \\ 2 = 1
		ifTrue: [
			interSectionCompensation := self isEven ifTrue: [1] ifFalse: [0]]
		ifFalse: [
			interSectionCompensation := 0].
	
	"Every two columns we get one free vertical steps"
	compensatedVerticalMove := horizontalSteps // 2.
	
	"Calculating how many vertical steps we still need to perform to reach the given index"
	verticalSteps := (self row - anotherIndex row) abs - compensatedVerticalMove - interSectionCompensation.
	
	"If the amount of vertical steps was fully compensated by moving along columns, it must be 0"
	verticalSteps < 0
		ifTrue: [verticalSteps := 0].
	
	^ horizontalSteps + verticalSteps