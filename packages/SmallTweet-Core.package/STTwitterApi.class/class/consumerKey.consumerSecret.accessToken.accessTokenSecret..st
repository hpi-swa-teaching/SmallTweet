constructors
consumerKey: aConsumerKey consumerSecret: aConsumerSecret accessToken: aTokenString accessTokenSecret: aTokenSecretString
	^ (self consumerKey: aConsumerKey consumerSecret: aConsumerSecret)
		accessToken: aTokenString;
		accessTokenSecret: aTokenSecretString;
		yourself.