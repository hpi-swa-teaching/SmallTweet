as yet unclassified
testFromJsonObject
	| jsonTimeline jsonObject tweet |
	
	jsonTimeline := (Json new stream: (ReadStream on: Fixture userTimelineJsonResponse )) readAny.
	jsonObject := jsonTimeline at: 1.
	tweet := STTweet from: jsonObject.

	self assert: (tweet id) equals: (jsonObject at: 'id').
	self assert: (tweet createdAt) equals: (jsonObject at: 'created_at').
	self assert: (tweet text) equals: (jsonObject at: 'text').
	self assert: (tweet entities) equals: (jsonObject at: 'entities').
	self assert: (tweet user id) equals: ((jsonObject at: 'user') at: 'id').
	self assert: (tweet user name) equals: ((jsonObject at: 'user') at: 'name').
	self assert: (tweet user screenName) equals: ((jsonObject at: 'user') at: 'screen_name').
	self assert: (tweet user profileImageUrl) equals: ((jsonObject at: 'user') at: 'profile_image_url').
	self assert: ((tweet urls at: 1) expandedUrl) equals: ((((jsonObject at: 'entities') at: 'urls') at: 1) at: 'expanded_url').
	self assert: ((tweet urls at: 1) displayUrl) equals: ((((jsonObject at: 'entities') at: 'urls') at: 1) at: 'display_url').
	self assert: ((tweet urls at: 1) shortUrl) equals: ((((jsonObject at: 'entities') at: 'urls') at: 1) at: 'url').