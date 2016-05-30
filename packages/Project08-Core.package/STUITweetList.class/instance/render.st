as yet unclassified
render
	tweets
		do: [:tweet | 
			| tweetMorph spacingMorph |
			tweetMorph := STUITweet for: tweet.
			spacingMorph := Morph new color: Color veryVeryLightGray.
			spacingMorph 
				height: 1;
				hResizing: #spaceFill.
			self addMorphBack: tweetMorph.
			self addMorphBack: spacingMorph]