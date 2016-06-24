as yet unclassified
testExpandUrl
	| jsonTimeline tweet|
	jsonTimeline := (Json new stream: (ReadStream on: Fixture userTimelineJsonResponse )) readAny.
	tweet := STTweet from: (jsonTimeline at: 1).
	tweet expandUrl.
	self assert: tweet text equals: 'Introducing the Twitter Certified Products Program: https://dev.twitter.com/blog/twitter-certified-products'
	
	"Transcript show: tweet text.
	Transcript cr. 
	tweet urls do:[:url|
		Transcript show: url expandedUrl.
		Transcript cr.
		Transcript show: url shortUrl .]"