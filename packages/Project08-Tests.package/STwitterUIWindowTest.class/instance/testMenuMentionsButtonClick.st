as yet unclassified
testMenuMentionsButtonClick
    	| button |
    	button := self subject findByName: 'mentionsButton'.
    	button click.
    	self assert: button active = true.
	
	self assert: self subject viewMorph class = STwitterUIMentions.