# SmallTweet 2016 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-16.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-16)

Simple Twitter Client for Squeak/Smalltalk.

## Setup

1. Open Sqeak

2. Execute in Squeak:<br>
	```
  Metacello new
    baseline: 'SmallTweet';
	  repository: 'github://HPI-SWA-Teaching/SWT16-Project-16:master/packages';
	  onConflict: [:ex | ex allow];
	  load
	 ```
	 
3. Open Terminal in prefered folder

4. Clone git repository:<br>
	```
  git clone https://github.com/HPI-SWA-Teaching/SWT16-Project-16.git
  ```
  
5. Open Monticello Browser

6. Select SmallTweet-Core

7. Click on '+ Repository' and select 'filetree://'

8. Select the package folder of the cloned repository and click 'ok'

9. Select the added repository in the Monticello Browser and click on 'Open'

10. Load the current state of all packages

11. Execute in Squeak:<br>
	```
  STUIWindow open.
  ```

### Get Consumer Key and Secret:

1. Open in Internet Browser:
	https://apps.twitter.com/app/

2. Click on 'Create New App'

3. Create an App

4. Find the Consumer Key and Secret in the 'Keys and Access Tokens' Tab

5. Fill in that credentials in settings menu

## Architecture
The app's architecture is not fully MVC. We decided to stick with this approach because of the project's simplicity at that point. With more complexity in the next iterations it is strongly advised to switch.

The app is divided into UI classes (STUI prefix), that are also handling button actions etc, the Twitter API with related models for tweets etc. and some helpers/extentions.


### Twitter API
**STTwitterApi**<br>
The STTwitterApi provides methods for some endpoints of the Twitter API ([Docs](dev.twitter.com/rest/public)), response serialization, error handling and OAuth authentication flow. Have a look at the Unit tests for an example.

**STResult**<br>
STResult wraps the result of a request into a subclass of a STModel (STTweet etc) or an STError and provides an easy interface for handling both cases.

**STError**<br>
An STError provides a list of errors that happenend in a request to the Twitter API.

**STModel**<br>
Abstract base class for a result model.

**STTweet**<br>
An STTweet holds various information about a Tweet such as the text and the user.

**STUser**<br>
An STUser holds a user profile.

**STMedia**
STMedia holds image data of a tweet.

**STUrl**<br>
An STUrl holds different versions of an url that appear in an tweet.

### UI

#### Window
*The main UI window that will hold the menu and the views.*

It is responsible for:
* initializing the menu and its buttons
* initializing and updating the views
* connecting the buttons to specific actions (like loading a view)
* holding the twitterApi object

**STUIWindow**<br>
STUIWindow is the main wrapper for all of the views and responsible for connecting them properly.

<br>

#### Menu
*Menu related classes.*

The menu is only a wrapper for its buttons. They will be initialized (including their actions) by the STUIWindow.

**STUIMenu**<br>
STUIMenu contains the main navigation in form of SUIMenuButtons.

**STUIMenuButton**<br>
STUIMenuButton is an IconicButton which additionally contains an active state and an id. Normally it will be used for loading a new view in the STUIWindow.

<br>

#### Views
*The views that get loaded on the right side of the window.*

Views will be initialized class side by for example passing a UserObject or a List of Tweets. They should contain as little logic as possible and actually only display the data they got initialized with.

**STUIView** (abstract)<br>
A STUIView is a morph which is displayed as part of the STUIWindow.

**STUILists**<br>
STUILists is a view for the Twitter "lists" feature.

**STUINewTweet**<br>

**STUIProfile**<br>
STUIProfile is a view to display a user profile.

**STUISettings**<br>
STUISettings is a view to show the possible settings like logged in user accounts.

**STUITweetList** (abstract)<br>
STUITweetList is a wrapper view to display a list of STUITweets.

**- STUIHomeTimeline**<br>
STUIHomeTimeline implements a STUITweetList for the home timeline.

**- STUIMentionsTimeline**<br>

**- STUIUserTimeline**<br>
STUIHomeTimeline implements a STUITweetList for the user's timeline.

<br>

#### Tweet
*Tweet related classes.*

**STUITweet**<br>
STUITweet is the graphical representation of a STTweet instance and should be used inside a STUITweetList.

**STUITweetActionButton** (abstract)<br>
STUITweetActionButtons are Retweet, Fav, etc.

**- STUIRetweetButton**<br>
Retweet functionality.

**- STUIStarButton**<br>
Favorite functionality.

<br>

#### Helpers
*Helpers that we only use class-side.*

**STUIIcons** (class side)<br>
STUIIcons is an image-form dispenser for the icons we're using so we don't have to reload them every time from the resources folder.

<br>

#### Extensions
*Classes we had to customize.*

A short comment on what and why we had to customize them is added to each class:

**STUIScrollBar**<br>
We added the functionality to refresh tweets if you scroll to the top of a STUITweetList and load new tweets if you scroll to the bottom of it.

**STUIScrollPane**<br>
To use STUIScrollBar we had to customize this class as well.

**STUITextFormatter**<br>
TextFormatter is responsible for replacing &lt;a>-Tags. So we needed to customize it to use STUITextURL instead of the normal link class.

**STUITextURL**<br>
Opening a URL didn't work for us on Mac. So we implemented a custom link opening function in "STUtils" and using it in the default link class as well.
