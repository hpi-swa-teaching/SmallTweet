as yet unclassified
testHomeTimeline
	| tweets |
	twitterApi webClient mock: '/1.1/statuses/home_timeline.json' with: Fixture homeTimelineJsonResponse.
	tweets := twitterApi homeTimeline.
	
	self assert: (tweets at: 1) id equals: 240558470661799936.
	self assert: (tweets at: 2) id equals: 240556426106372096.
	self assert: (tweets at: 3) id equals: 240539141056638977.