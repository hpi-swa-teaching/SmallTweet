as yet unclassified
twitterLogin

	| client url resp oauthToken |
	client := WebClient new.
	oauthToken := (((self requestOauthToken findTokens: '=')
				at: 2)
				findTokens: '&')
				at: 1.
	url := 'https://api.twitter.com/oauth/authenticate?oauth_token=', oauthToken.
	resp := client
				httpGet: url
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: self oauthParams].
	resp isSuccess
		ifFalse: [^ 'Something went wrong' , resp content].

	^resp content