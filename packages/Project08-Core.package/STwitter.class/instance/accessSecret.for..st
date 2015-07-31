accessing
accessSecret: anAccessSecret for: aTwitterName 

	accessSecret
		ifNil: [accessSecret := Dictionary newFromPairs: {aTwitterName asString. anAccessSecret}.
			^ self].
	accessSecret add: aTwitterName asString -> anAccessSecret asString