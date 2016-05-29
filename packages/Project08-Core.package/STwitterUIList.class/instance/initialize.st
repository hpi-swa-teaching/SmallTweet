as yet unclassified
initialize
	super initialize.
	tweets := OrderedCollection new.
	
	"TODO: real tweets"
	tweets 
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new;
		add: STTweet new.
	
	self render.