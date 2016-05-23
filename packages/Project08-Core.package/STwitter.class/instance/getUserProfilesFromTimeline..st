twitterFunctions
getUserProfilesFromTimeline: jsonTimeline
	jsonTimeline do: [ :p |
		self initializeUserFromJson: (p at: 'user')].
	
	Transcript show: self userProfiles.
	self userProfiles do: [ :p |
		STwitterProfileWindow with: p.
		]
	