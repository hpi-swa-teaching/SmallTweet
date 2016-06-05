as yet unclassified
testMentionsTimeline
	| tweets |
	twitterApi webClient mock: '/1.1/statuses/metiond_timeline.json' with: Fixture mentionsTimelineJsonResponse.
	tweets := twitterApi mentionsTimeline.
	
	self assert: (tweets at: 1) id equals: 242613977966850048.
	self assert: (tweets at: 2) id equals: 242534402280783873.
	 