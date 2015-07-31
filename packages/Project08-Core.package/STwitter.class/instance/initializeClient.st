initialize
initializeClient
	FlagForTest = 1
		ifTrue: [^ TestWebClient new]
		ifFalse: [^ WebClient new].