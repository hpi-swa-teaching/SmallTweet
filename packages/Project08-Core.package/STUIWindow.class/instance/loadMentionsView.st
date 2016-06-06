as yet unclassified
loadMentionsView
	self twitterApi isUserLoggedin ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (STUIMentions with: twitterApi mentionsTimeline)
		as: #mentionsView 
		activate: #mentionsButton.