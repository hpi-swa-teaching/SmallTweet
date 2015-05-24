as yet unclassified
twitterTweet: aTweet

	|client url resp extra|

	client := WebClient new.
	
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. aTweet.
	}.
	resp := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: self oauthParams].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.