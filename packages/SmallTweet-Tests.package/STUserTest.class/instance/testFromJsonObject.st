as yet unclassified
testFromJsonObject
	| jsonObject user |
	
	jsonObject := (Json new stream: (ReadStream on:  userJson)) readAny.
	user := STUser from: jsonObject.
	
	self assert: (user id) equals: (jsonObject at: 'id').
	self assert: (user name) equals: (jsonObject at: 'name').
	self assert: (user screenName) equals: (jsonObject at: 'screen_name').
	self assert: (user profileImageUrl) equals: (jsonObject at: 'profile_image_url').