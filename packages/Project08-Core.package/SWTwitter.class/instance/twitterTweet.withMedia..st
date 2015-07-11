twitterFunctions
twitterTweet: aTwitterUser withMedia: aMediaId

	|client url response extra tweet personalOauthParams|

	client := WebClient new.
	tweet := self extractTweet.
	self replaceSpaces: tweet.

	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. 'Tweeting #Squeak methods with two redButtonClicks. #SWTwitter'.
		'media_ids'. aMediaId.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: personalOauthParams].
	response isSuccess ifFalse:[
	
		Transcript show: ('Something went wrong', response content).
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.