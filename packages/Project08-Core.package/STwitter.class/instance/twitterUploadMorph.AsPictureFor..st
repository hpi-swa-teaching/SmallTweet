twitterFunctions
twitterUploadMorph: aMorph AsPictureFor: aTwitterUser

	| response|

	response := self multipartHeaderForForm: aMorph User: aTwitterUser.

	((self checkResponse: response) < 0) ifTrue: [^self].
	
	^(Json new stream: (ReadStream on: response content)) readAny at: 'media_id_string'