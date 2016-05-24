constructors
consumerKey: aConsumerKey consumerSecret: aConsumerSecret accessToken: aTokenString
	^ (self consumerKey: aConsumerKey consumerSecret: aConsumerSecret)
		accessToken: aTokenString;
		yourself.