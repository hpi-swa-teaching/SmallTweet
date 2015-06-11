twitterFunctions
apiTest

	|client url resp json jsonObj|

	client := WebClient new.
	
	url := self class mockApiUrl , '/questions?page=1'.
	resp := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self class oauthParams].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].

	json := Json new.
	jsonObj := Array new.
	json stream: (ReadStream on: (resp content)).
	jsonObj := json readAny.