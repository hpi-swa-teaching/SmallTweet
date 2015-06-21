twitterFunctions
twitterGetTimeline: aTwitterName 
	| client url response json jsonObj personalOauthParams |
	client := WebClient new.
	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterName.
	url := SWTwitter apiUrl , '/statuses/user_timeline.json?screen_name=' , aTwitterName , '&count=10'.
	response := client
				httpGet: url
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: personalOauthParams].
	response isSuccess
		ifFalse: [Transcript show: ('Something went wrong' , response content). ^self].
	json := Json new.
	jsonObj := Array new.
	json
		stream: (ReadStream on: response content).
	jsonObj := json readAny.
	^ jsonObj