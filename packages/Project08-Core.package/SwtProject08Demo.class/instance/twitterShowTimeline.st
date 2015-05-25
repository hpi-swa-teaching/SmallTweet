as yet unclassified
twitterShowTimeline

	|client url resp json jsonObj |

	client := WebClient new.
	
	url := self class apiUrl, '/statuses/user_timeline.json?user_id=3197549265&count=',self class numberOfTweets.
	"url := self class apiUrl, '/statuses/user_timeline.json?screen_name=tymolc&count=10'."
	"url := self class apiUrl , '/account/verify_credentials.json'."
	resp := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self oauthParams].
	resp isSuccess ifFalse:[
	
		^'Something went wrong', resp content.
	].

	json := Json new.
	jsonObj := Array new.
	json stream: (ReadStream on: (resp content)).
	jsonObj := json readAny.
	jsonObj do: [:j | Transcript show: (j at: 'text'). Transcript cr. Transcript cr.]
	