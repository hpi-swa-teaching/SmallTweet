twitterAuthentication
twitterGetAuthenticationPage
	| client url oauthToken hostOS|
	client := WebClient new.
	oauthToken := (((self requestOauthToken findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	self class oauthParams add: 'oauth_token' -> oauthToken.
	url := 'https://api.twitter.com/oauth/authenticate?oauth_token=' , oauthToken, '&force_login=true'.
      hostOS := Smalltalk platformName.
	(hostOS = 'Mac OS')
          ifTrue: [MacShell new openLinkInBrowser: url].
     (hostOS = 'Win32') 
          ifTrue: [WinShell new openLinkInBrowser: url].
	^ url