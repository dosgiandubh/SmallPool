thinking
handleWorldEnvironment: environment

	(environment visibleObject = self expectedObject) not
		ifTrue: [self increaseEnergyBy: 1]