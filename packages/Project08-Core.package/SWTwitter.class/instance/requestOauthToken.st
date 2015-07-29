twitterAuthentication
requestOauthToken

	|client url resp extra|

	client := self initializeClient.
	
	url := 'https://api.twitter.com/oauth/request_token'.
	extra := Dictionary newFromPairs: {
		'oauth_callback'. 'oob'.
	}.
	resp := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: self class oauthParams].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].

	^resp content 