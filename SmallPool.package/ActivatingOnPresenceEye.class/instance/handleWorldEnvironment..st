thinking
handleWorldEnvironment: environment

	(environment visibleObject = self expectedObject)
		ifTrue: [self increaseEnergyBy: 1]