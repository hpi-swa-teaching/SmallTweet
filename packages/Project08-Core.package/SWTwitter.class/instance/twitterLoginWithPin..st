twitterAuthentication
twitterLoginWithPin: aPin 

	| client url resp extra |
	client := WebClient new.
	extra := Dictionary newFromPairs: {'oauth_verifier'. aPin}.
	url := 'https://api.twitter.com/oauth/access_token?oauth_verifier=' , aPin.
	resp := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: self class oauthParams].
	resp isSuccess
		ifFalse: [Transcript show: 'Something went wrong' , resp content. ^self].

	^ self readUsernameFromWebResponse: resp