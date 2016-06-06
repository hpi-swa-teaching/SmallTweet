as yet unclassified
loadProfileView
	self twitterApi isUserLoggedin ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (STUIProfile with: twitterApi userTimeline from: twitterApi currentUser)
		as: #profileView 
		activate: #profileButton.