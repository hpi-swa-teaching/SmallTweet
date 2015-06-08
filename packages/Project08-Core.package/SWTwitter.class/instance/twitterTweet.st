twitterFunctions
twitterTweet

	|client url response extra tweet|

	client := WebClient new.
	tweet := self twitterUi textField theText asString.
	self replaceSpaces: tweet.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. tweet.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: self class oauthParamsTest1].
	response isSuccess ifFalse:[
	
		^'Something went wrong', response content.
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.