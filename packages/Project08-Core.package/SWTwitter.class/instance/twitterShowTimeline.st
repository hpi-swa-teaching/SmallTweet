twitterFunctions
twitterShowTimeline

	|client url response json jsonObj |

	client := WebClient new.
	
	url := self class apiUrl, '/statuses/user_timeline.json?user_id=3197549265&count=',self class numberOfTweets.
	response := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self class oauthParams].
	response isSuccess ifFalse:[
	
		^'Something went wrong', response content.
	].

	json := Json new.
	jsonObj := Array new.
	json stream: (ReadStream on: (response content)).
	jsonObj := json readAny.
	jsonObj do: [:j | Transcript show: (j at: 'text'). Transcript cr. Transcript cr.]
	