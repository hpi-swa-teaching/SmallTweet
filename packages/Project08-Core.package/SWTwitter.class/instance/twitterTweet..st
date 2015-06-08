twitterFunctions
twitterTweet: aTwitterUser

	|client url response extra tweet personalOauthParams|

	client := WebClient new.
	tweet := self twitterUi textField theText asString.
	personalOauthParams := self class oauthParamsTest1 value.
	personalOauthParams at: 'oauth_token' put: (self accessToken at: aTwitterUser asString).
	personalOauthParams at: 'oauth_token_secret' put: (self accessSecret at: aTwitterUser asString).
	self replaceSpaces: tweet.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. tweet.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: personalOauthParams].
	response isSuccess ifFalse:[
	
		^'Something went wrong', response content.
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.