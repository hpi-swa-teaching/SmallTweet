*smalltweet-core
tweetMethod
    (Smalltalk includesKey: #currentTwitter)
        ifFalse: [SWTwitterMainWindow new].
    currentTwitter openTweetWindowWith: self contents.
