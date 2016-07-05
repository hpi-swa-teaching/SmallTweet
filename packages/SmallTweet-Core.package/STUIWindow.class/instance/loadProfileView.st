as yet unclassified
loadProfileView
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	self loadProfileViewOf: self twitterApi currentUser .