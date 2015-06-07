as yet unclassified
twitterGetTimeline: aTwitterName

	|client url resp json jsonObj |

	client := WebClient new.
	
	url := self class apiUrl, '/statuses/user_timeline.json?screen_name=',aTwitterName,'&count=10'.
	resp := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self oauthParams].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].

	json := Json new.
	jsonObj := Array new.
	json stream: (ReadStream on: (resp content)).
	jsonObj := json readAny.
	^jsonObj
	