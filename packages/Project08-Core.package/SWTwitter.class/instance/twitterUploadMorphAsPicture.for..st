twitterFunctions
twitterUploadMorphAsPicture: aMorph for: aTwitterUser

	|client url response extra morphAsPicture morphAsBinaryString personalOauthParams|

	client := WebClient new.
	morphAsBinaryString := String new.
	aMorph exportAsPNGNamed: 'upload.png'.
	morphAsPicture := ((Form fromFileNamed: 'upload.png') bits compressToByteArray).
	morphAsPicture do: [:index | morphAsBinaryString := morphAsBinaryString, index asString].
	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.

	url := 'https://upload.twitter.com/1.1/media/upload.json'.
	extra := Dictionary newFromPairs: {
		'media'. morphAsBinaryString.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'multipart/form-data'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: personalOauthParams].
	response isSuccess ifFalse:[
	
		Transcript show: ('Something went wrong', response content).
		^self
	].
	
	Transcript show: 'Tweet successfull'. Transcript cr.