as yet unclassified
testUserTimeline
	| tweets |
	twitterApi webClient mock: '/1.1/statuses/user_timeline.json' with: Fixture userTimelineJsonReponse.
	tweets := twitterApi userTimeline.
	
	self assert: (tweets at: 1) id equals: 240859602684612608.
	self assert: (tweets at: 2) id equals: 239413543487819778.
	 