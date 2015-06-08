twitterFunctions
twitterTweet: aTweet

	|client url response extra|

	client := WebClient new.
	self replaceSpaces: aTweet.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. aTweet.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: self class oauthParams].
	response isSuccess ifFalse:[
	
		^'Something went wrong', response content.
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.