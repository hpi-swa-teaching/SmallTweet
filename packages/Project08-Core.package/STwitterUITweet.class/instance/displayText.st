as yet unclassified
displayText
	 "TODO: Real tweet"
	| tweetUserName tweetText |
	tweetUserName := 'Nico Knoll'.
	tweetText := 'Animi tempora diamlorem adipisci nibh qui magni, occaecat ad, aliquid! Quas mi beatae aenean. Sodales. Feugiat, veniam ultricies sociis est condimentum feugiat iaculis parturient, earum nobis, libero molestie hic. Occaecat.'.
	
	text := TextMorph new contentsWrapped: ('<b>', tweetUserName, '</b><br>', tweetText) asHtmlText.
	text 
		wrapFlag: true;
	 	lock;
		width:300.
	self addMorphBack: text.