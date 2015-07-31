twitterAuthentication
getPersonalOAuthParametersFor: aTwitterUser 

	| personalOauthParams |
	personalOauthParams := self class oauthParams value.
	personalOauthParams
		at: 'oauth_token'
		put: (self accessToken at: aTwitterUser asString);
		
		at: 'oauth_token_secret'
		put: (self accessSecret at: aTwitterUser asString).
	^ personalOauthParams