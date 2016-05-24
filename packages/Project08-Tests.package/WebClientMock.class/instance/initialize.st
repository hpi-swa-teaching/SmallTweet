as yet unclassified
initialize
	super initialize.
	
	jsonFixturesMap := Dictionary new.
	jsonFixturesMap at: '/1.1/statuses/user_timeline.json' put: JsonFixture userTimeline.