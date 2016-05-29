as yet unclassified
testFromJsonObject
	| tweetJson jsonTimeline jsonObject tweet |
	
	tweetJson := '{"id": 27634, "created_at": "timestamp", "text": "a text", "entities": {}, "user": {"id": 1, "name": "Name", "screen_name": "@name", "profile_image_url": "url_to_imge"}}'.
	jsonTimeline := (Json new stream: (ReadStream on: Fixture userTimelineJsonResponse )) readAny.
	jsonObject := jsonTimeline at:1.
	tweet := STTweet from: jsonObject.

	self assert: (tweet id) equals: (jsonObject at: 'id').
	self assert: (tweet createdAt) equals: (jsonObject at: 'created_at').
	self assert: (tweet text) equals: (jsonObject at: 'text').
	self assert: (tweet entities) equals: (jsonObject at: 'entities').
	self assert: (tweet user id) equals: ((jsonObject at: 'user') at: 'id').
	self assert: (tweet user name) equals: ((jsonObject at: 'user') at: 'name').
	self assert: (tweet user screenName) equals: ((jsonObject at: 'user') at: 'screen_name').
	self assert: (tweet user profileImageUrl) equals: ((jsonObject at: 'user') at: 'profile_image_url').