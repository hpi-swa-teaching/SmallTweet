webCommunication
postRequestFor: aTwitterUser on: url with: extra 
	| client response personalOauthParameters |
	client := self initializeClient.
	personalOauthParameters := self getPersonalOAuthParametersFor: aTwitterUser.
	response := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: personalOauthParameters].
	^response