twitterAuthentication
getPersonalOAuthParametersFor: aTwitterUser 

	| personalOauthParameters |
	personalOauthParameters := self class oauthParameters value.
	personalOauthParameters
		at: 'oauth_token'
		put: (self accessToken at: aTwitterUser asString);
		
		at: 'oauth_token_secret'
		put: (self accessSecret at: aTwitterUser asString).
	^ personalOauthParameters