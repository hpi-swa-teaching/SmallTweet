as yet unclassified
loadNewTweetView
	self twitterApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (STUINewTweet with: twitterApi)
		as: #newTweetView 
		activate: #newTweetButton.