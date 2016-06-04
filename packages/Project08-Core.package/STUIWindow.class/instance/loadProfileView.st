as yet unclassified
loadProfileView
	self 
		loadView: (STUIProfile with: twitterApi)
		as: #profileView 
		activate: #profileButton.