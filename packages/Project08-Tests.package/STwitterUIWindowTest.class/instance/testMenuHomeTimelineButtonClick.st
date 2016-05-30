as yet unclassified
testMenuHomeTimelineButtonClick
    	| button |
    	button := self subject findByName: 'homeTimelineButton'.
    	button click.
    	self assert: button active = true.
	
	self assert: self subject viewMorph class = STwitterUIHomeTimeline.