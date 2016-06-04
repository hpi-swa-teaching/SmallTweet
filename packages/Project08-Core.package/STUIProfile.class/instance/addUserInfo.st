as yet unclassified
addUserInfo 
	| user userInfo text userNumTweets userNumFollowing userNumFollowers |
	
	userInfo := RectangleMorph new.
	userInfo
		color: (Color r: 0.1 g: 0.2 b: 0.3);
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 20;
		layoutInset:20;
		borderWidth: 0.
	
	"TODO: add real user data"
	user := STUser new.
	user screenName: '@nico_knoll'.
	user name: 'Nico Knoll'.
	user description: 'You want your website to become awesome? Call Barney. Or hire me. In love with @processwire CMS. Working at @4scotty..'.
	userNumTweets := 4575.
	userNumFollowing := 153.
	userNumFollowers := 104285.
	text := TextMorph new.
	text 
		contentsWrapped: (
			'<b><font size="20">', user screenName, '</font></b><br>',
			'<font color="#cccccc">', user name, '</font><br><br>',
			user description, '<br><br>',
			'<b>', userNumTweets, '</b> Tweets - <b>',  userNumFollowing, '</b> Following - <b>', userNumFollowers, '</b> Followers') asHtmlText;
		wrapFlag: true;
		width: 400;
		color: Color white;
		centered;
		lock.
		
	userInfo addMorphBack: ImageMorph new.
	userInfo addMorphBack: text.
	
	self addMorphBack: userInfo.
	