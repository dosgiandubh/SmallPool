instance creation
on: object
	"Creates an eye that activates when sees the given object"
	
	^ self new
		expectedObject: object;
		yourself