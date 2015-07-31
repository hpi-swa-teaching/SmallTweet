webCommunication
getRequestFor: aTwitterUser on: url 

	| client response personalOauthParams |

	client := self initializeClient.
	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.
	response := client
				httpGet: url
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: personalOauthParams].
	^ response