twitterFunctions
twitterGetTimeline: aTwitterUser
	| url response |

	url := STwitter apiUrl , '/statuses/user_timeline.json?screen_name=' , aTwitterUser , '&count=10'.
	response := self getRequestFor: aTwitterUser on: url.
	
	((self checkResponse: response) < 1) ifTrue: [^self].
	^ (Json new stream: (ReadStream on: response content)) readAny