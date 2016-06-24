as yet unclassified
favoriteTweetWithId: anInteger fromSender: aButton
	self twitterApi favoriteStatusWithId: anInteger.
	aButton labelGraphic: STUIIcons heartActive.