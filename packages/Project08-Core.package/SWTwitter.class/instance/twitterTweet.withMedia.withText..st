twitterFunctions
twitterTweet: aTwitterUser withMedia: aMediaId withText: aText

	|client url response extra tweet personalOauthParams|

	client := WebClient new.
	tweet := aText.

	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. tweet.
		'media_ids'. aMediaId.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: personalOauthParams].
	response isSuccess ifFalse:[
		^response content.
	].
	
	^0