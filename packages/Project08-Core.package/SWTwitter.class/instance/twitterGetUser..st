twitterFunctions
twitterGetUser: aTwitterName
"Delivers various information about a user"

	|client url response json jsonObj |

	client := WebClient new.
	
	url := self class apiUrl, '/users/show.json?screen_name=',aTwitterName,'&include_entities=false'.
	response := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self class oauthParams].
	response isSuccess ifFalse:[
	
		^'Failed to get user information', response content.
	].

	json := Json new.
	jsonObj := Array new.
	json stream: (ReadStream on: (response content)).
	jsonObj := json readAny.

	Transcript show: 'Account: '; show: aTwitterName; cr.
	Transcript show: 'Name: '; show: (jsonObj at: 'name'); cr.
	Transcript show: 'UserID: '; show: (jsonObj at: 'id'); cr.
	Transcript show: 'Created: '; show: (jsonObj at: 'created_at'); cr.
	Transcript show: 'Location: '; show: (jsonObj at: 'location'); cr.
	Transcript show: 'Description: '; show: (jsonObj at: 'description'); cr.
	"Transcript show: 'ProfileText: '; show: (jsonObj at: 'text'); cr."
	Transcript show: 'Follower: '; show: (jsonObj at: 'followers_count'); cr.
	Transcript show: 'Following: '; show: (jsonObj at: 'friends_count'); cr.
	Transcript show: 'Tweets: '; show: (jsonObj at: 'statuses_count'); cr.
	"Transcript show: 'Retweets: '; show: (jsonObj at: 'retweet_count'); cr.
	Transcript show: 'Favorites: '; show: (jsonObj at: 'favorites_count'); cr."
	