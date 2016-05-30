as yet unclassified
testMenuProfileButtonClick
    	| button |
    	button := self subject findByName: 'profileButton'.
    	button click.
    	self assert: button active = true.
	
	self assert: self subject viewMorph class = STwitterUIProfile.