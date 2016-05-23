twitterFunctions
showMedia: aTweet
"displays the media contained in aTweet, which should be a JSON Object"
	|  entities media mediaUrl|
	entities := aTweet at: 'extended_entities'.
	(entities = nil) ifFalse:[
		media := (entities at: 'media').
		(media = nil) ifFalse:[
				media do: [:m | 
				mediaUrl := m at: 'media_url'.
				self showJPGfrom: mediaUrl.
				]
								
			]
		]