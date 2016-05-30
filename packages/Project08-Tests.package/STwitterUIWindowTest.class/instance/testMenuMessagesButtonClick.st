as yet unclassified
testMenuMessagesButtonClick
    	| button |
    	button := self subject findByName: 'messagesButton'.
    	button click.
    	self assert: button active = true.
	
	self assert: self subject viewMorph class = STwitterUIMessages.