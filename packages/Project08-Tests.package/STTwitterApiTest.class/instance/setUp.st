as yet unclassified
setUp
	twitterApi := STTwitterApi consumerKey: 'a key' consumerSecret: 'a secret' accessToken: 'a token'.
	twitterApi webClient: WebClientMock new.