as yet unclassified
loadProfileView
	self 
		loadView: (STUIProfile with: twitterApi userTimeline from: twitterApi currentUser)
		as: #profileView 
		activate: #profileButton.