as yet unclassified
setUp
	twitterApi := STTwitterApi consumerKey: 'a key' consumerSecret: 'a secret' accessToken: 'a token' accessTokenSecret: 'a token secert'.
	twitterApi webClient: WebClientMock new.