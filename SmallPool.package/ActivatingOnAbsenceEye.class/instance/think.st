thinking
think

	self energy > 0
		ifTrue: [| signal |
			signal := NeuralSignal energy: self energy.
			self followingCells do: [:each | each handleNeuralSignal: signal].
			self drainEnergy]