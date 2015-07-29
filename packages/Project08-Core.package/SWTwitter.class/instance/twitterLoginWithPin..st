twitterAuthentication
twitterLoginWithPin: aPin 

	| client url response extra |
	client := WebClient new.
	extra := Dictionary newFromPairs: {'oauth_verifier'. aPin}.
	url := 'https://api.twitter.com/oauth/access_token?oauth_verifier=' , aPin.
	response := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: self class oauthParameters].
	response isSuccess
		ifFalse: [Transcript show: 'Something went wrong' , response content. ^self].

	^ self readUsernameFromWebResponse: response