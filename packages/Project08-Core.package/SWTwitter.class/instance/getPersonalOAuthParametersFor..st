twitterAuthentication
getPersonalOAuthParametersFor: aTwitterUser

	|personalOauthParams|

	personalOauthParams := self class oauthParamsTest1 value.
	personalOauthParams at: 'oauth_token' put: (self accessToken at: aTwitterUser asString).
	personalOauthParams at: 'oauth_token_secret' put: (self accessSecret at: aTwitterUser asString).
	^personalOauthParams