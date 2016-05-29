as yet unclassified
testFromJsonObject
	| jsonTimeline jsonObject url |
	
	jsonTimeline := (Json new stream: (ReadStream on: Fixture userTimelineJsonResponse )) readAny.
	jsonObject := (((jsonTimeline at: 1) at: 'entities') at: 'url') at: 1.
	url := STUrl from: jsonObject.
	
	self assert: (url expandedUrl) equals: (jsonObject at: 'expanded_url').
	self assert: (url displayUrl) equals: (jsonObject at: 'display_url').
	self assert: (url shortUrl) equals: (jsonObject at: 'url').