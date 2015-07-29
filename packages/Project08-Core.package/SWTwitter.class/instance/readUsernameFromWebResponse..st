twitterAuthentication
readUsernameFromWebResponse: response 

	| oauthSecret oauthToken userName |

	oauthSecret := (((response content findTokens: '&') at: 2) findTokens: '=') at: 2.
	oauthToken := (((response content findTokens: '&')	at: 1) findTokens: '=') at: 2.

	userName := self twitterGetUserNameWithToken: oauthToken Secret: oauthSecret. 
	self accessToken: oauthToken for: userName.
	self accessSecret: oauthSecret for: userName.
	^ userName