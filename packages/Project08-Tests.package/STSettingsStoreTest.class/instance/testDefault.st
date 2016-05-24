as yet unclassified
testDefault
	| store1 store2 |
	store1 := STSettingsStore default.
	store2 := STSettingsStore default.
	
	self assert: store1 equals: store2. 