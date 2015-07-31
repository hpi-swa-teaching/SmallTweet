accessing
accessToken: anAccessToken for: aTwitterName 

	accessToken
		ifNil: [accessToken := Dictionary newFromPairs: {aTwitterName asString. anAccessToken}.
			^ self].
	accessToken add: aTwitterName asString -> anAccessToken asString