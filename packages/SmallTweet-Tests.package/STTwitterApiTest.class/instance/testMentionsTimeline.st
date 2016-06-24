as yet unclassified
testMentionsTimeline
	| tweets result |
	twitterApi webClient mock: '/1.1/statuses/mentions_timeline.json' with: Fixture mentionsTimelineJsonResponse.
	
	result := twitterApi mentionsTimeline.
	self assert: result isSuccess.
	
	tweets := result value.
	self assert: (tweets at: 1) id equals: 242613977966850048.
	self assert: (tweets at: 2) id equals: 242534402280783873.
	 