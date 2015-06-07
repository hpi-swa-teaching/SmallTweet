as yet unclassified
twitterGetAuthenticationPage
	| client url oauthToken |
	client := WebClient new.
	oauthToken := (((self requestOauthToken findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	self oauthParams add: 'oauth_token' -> oauthToken.
	url := 'https://api.twitter.com/oauth/authenticate?oauth_token=' , oauthToken.
	^ url