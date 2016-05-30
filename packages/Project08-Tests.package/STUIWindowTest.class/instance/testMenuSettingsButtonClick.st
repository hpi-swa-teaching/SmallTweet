as yet unclassified
testMenuSettingsButtonClick
    	| button |
    	button := self subject findByName: 'settingsButton'.
    	button click.
    	self assert: button active = true.
	
	self assert: self subject viewMorph class = STUISettings.