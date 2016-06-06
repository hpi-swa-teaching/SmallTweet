as yet unclassified
loadNewTweetView
	self twitterApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: STUINewTweet new
		as: #newTweetView 
		activate: #newTweetButton.