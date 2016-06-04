as yet unclassified
addUserSection 

	self addMorph: (TextMorph new contents: '<b>Users</b>' asHtmlText).
	self cellInset: 10.
	self layoutInset: 20.
	
	self addUserSectionList.
	self addUserSectionButtons.