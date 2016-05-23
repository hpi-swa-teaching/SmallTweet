twitterFunctions
initializeUserFromJson: jsonUser
	| newUser |
	self userProfiles ifNil: [self userProfiles: Bag new].
	self userProfiles do: [ :p |
		p id = (jsonUser at: 'id')
			ifTrue: [^False].
		].
	
	newUser := STUser from: jsonUser.
	self userProfiles add: newUser.