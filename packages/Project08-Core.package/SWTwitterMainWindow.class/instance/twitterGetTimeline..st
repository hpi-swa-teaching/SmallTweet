as yet unclassified
twitterGetTimeline: aTwitterName 
	| client url response json jsonObj |
	client := WebClient new.
	url := SWTwitter apiUrl , '/statuses/user_timeline.json?screen_name=' , aTwitterName , '&count=10'.
	response := client
				httpGet: url
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: SWTwitter oauthParams].
	response isSuccess
		ifFalse: [^ 'Something went wrong' , response content].
	json := Json new.
	jsonObj := Array new.
	json
		stream: (ReadStream on: response content).
	jsonObj := json readAny.
	^ jsonObj