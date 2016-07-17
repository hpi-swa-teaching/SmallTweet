as yet unclassified
initialize
	super initialize.
	tweet := STTweet new.
	
	self retweetButton: STUIRetweetButton new.
	self heartButton: STUIStarButton new.