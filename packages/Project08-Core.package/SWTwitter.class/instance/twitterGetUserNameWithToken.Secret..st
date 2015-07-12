twitterFunctions
twitterGetUserNameWithToken: anOauthToken Secret: anOauthSecret 

	| client url response oauthParams |
	client := WebClient new.

	oauthParams := self class oauthParams value.
	oauthParams 	at: 'oauth_token' put: anOauthToken;
		 			at: 'oauth_token_secret' put: anOauthSecret.

	url := self class apiUrl , '/account/verify_credentials.json?skip_status=true'.
	response := client
				httpGet: url
				do: [:request | WebUtils
						oAuthSign: request
						url: url
						using: oauthParams].
	response isSuccess
		ifFalse: [Transcript show: 'Something went wrong' , response content.
			^ self].
	^ (Json new
		stream: (ReadStream on: response content)) readAny at: 'screen_name'