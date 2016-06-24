as yet unclassified
render
	tweets
		do: [:tweet | 
			| tweetMorph spacingMorph |
			tweetMorph := STUITweet for: tweet.
			tweetMorph retweetButton
				target: self;
				actionSelector: #retweetTweetWithId:fromSender:;
				arguments: (Array with: (tweet id) with: tweetMorph retweetButton).
			tweetMorph heartButton
				target: self;
				actionSelector: #favoriteTweetWithId:fromSender:;
				arguments: (Array with: (tweet id) with: tweetMorph heartButton).
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph 
				height: 1;
				hResizing: #spaceFill.
			self addMorphBack: tweetMorph.
			self addMorphBack: spacingMorph]