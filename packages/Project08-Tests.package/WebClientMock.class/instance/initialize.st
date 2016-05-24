as yet unclassified
initialize
	super initialize.
	contentMap := Dictionary new.
	contentMap at: '/1.1/statuses/user_timeline.json' put: JsonFixtures userTimeline.