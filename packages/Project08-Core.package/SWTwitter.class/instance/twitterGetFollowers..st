twitterFunctions
twitterGetFollowers: aTwitterName

	|client url resp json jsonObj userCollection|

	client := WebClient new.
	
	url := self class apiUrl, '/followers/list.json?cursor=-1&screen_name=',aTwitterName,'&skip_status=true&include_user_entities=false'.
	resp := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self oauthParams].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].

	json := Json new.
	jsonObj := Array new.
	json stream: (ReadStream on: (resp content)).
	jsonObj := json readAny.

	userCollection := jsonObj at: 'users'. 
	userCollection  do: [:user | Transcript show: (user at: 'name'). Transcript show: ' = '. Transcript show: (user at: 'screen_name'). Transcript cr. Transcript cr.]