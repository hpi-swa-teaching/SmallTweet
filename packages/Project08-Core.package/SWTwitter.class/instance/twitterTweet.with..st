twitterFunctions
twitterTweet: aTwitterUser with: text
	| client url response extra tweet personalOauthParams |
	client := self initializeClient.
	tweet := text.
	tweet size > 140
		ifTrue: [self autoConvertLongTextToImageFor: aTwitterUser.
			^self].
	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.
	url := self class apiUrl , '/statuses/update.json'.
	extra := Dictionary newFromPairs: {'status'. tweet}.
	response := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: personalOauthParams].
	response isSuccess
		ifFalse: [^ response content].
	^ 0