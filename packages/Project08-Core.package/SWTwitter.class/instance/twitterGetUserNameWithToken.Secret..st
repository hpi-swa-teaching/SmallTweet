twitterFunctions
twitterGetUserNameWithToken: anOauthToken Secret: anOauthSecret
	
	|json jsonObj client url response oauthParams|

	client := WebClient new.
	oauthParams := self class oauthParamsTest1 value.
	oauthParams at: 'oauth_token' put: anOauthToken.
	oauthParams at: 'oauth_token_secret' put: anOauthSecret.

	url := self class apiUrl, '/account/verify_credentials.json?skip_status=true'.
	response := client httpGet: url do: [:request | WebUtils oAuthSign: request url:  url using: oauthParams].
	response isSuccess
		ifFalse: [Transcript show: ('Something went wrong' , response content). ^self].

	json := Json new.
	json stream: (ReadStream on: (response content)).
	jsonObj := json readAny.

	^jsonObj at: 'screen_name'