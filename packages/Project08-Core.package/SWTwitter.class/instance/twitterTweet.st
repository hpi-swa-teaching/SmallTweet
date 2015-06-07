twitterFunctions
twitterTweet

	|client url resp extra tweet|

	client := WebClient new.
	tweet := self twitterUi textField theText asString.
	self replaceSpaces: tweet.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. tweet.
	}.
	resp := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: self class oauthParamsTest1].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.