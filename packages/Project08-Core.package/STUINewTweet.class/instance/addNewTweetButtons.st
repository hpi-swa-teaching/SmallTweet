as yet unclassified
addNewTweetButtons
	| sendButton |
	
	sendButton := UiPushButton new.
	sendButton text: 'Tweet'.
	
	self addMorphBack: sendButton.