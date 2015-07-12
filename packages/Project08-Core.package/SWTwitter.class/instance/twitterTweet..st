twitterFunctions
twitterTweet: aTwitterUser 
	| client url response extra tweet personalOauthParams emergencyTextMorph |
	client := WebClient new.
	tweet := self extractTweet.
	tweet size > 140
		ifTrue: [emergencyTextMorph := self tweetWindowUi tweetTextfield textMorph.
			emergencyTextMorph backgroundColor: Color white;
				 exportAsPNGNamed: 'upload.png'.
			((self
				twitterTweet: aTwitterUser
				withMedia: (self twitterUploadMorphAsPictureFor: aTwitterUser)
				withText: 'Automatically converted to an image, because content was too long. #SWTwitter') = 0)
			ifTrue: self tweetWindow delete.
			^self].
	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.
	url := self class apiUrl , '/statuses/update.json'.
	extra := Dictionary newFromPairs: {'status'. tweet}.
	response := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: personalOauthParams].
	response isSuccess
		ifFalse: [^ response content].
	^ 0