as yet unclassified
testFromJsonObject
	| userJson jsonObject user |
	
	userJson := '{"id": 1, "name": "Name", "screen_name": "@name", "profile_image_url": "url_to_imge"}'.
	jsonObject := (Json new stream: (ReadStream on:  userJson)) readAny.
	user := STUser from: jsonObject.
	
	self assert: (user id) equals: (jsonObject at: 'id').
	self assert: (user name) equals: (jsonObject at: 'name').
	self assert: (user screenName) equals: (jsonObject at: 'screen_name').
	self assert: (user profileImageUrl) equals: (jsonObject at: 'profile_image_url').