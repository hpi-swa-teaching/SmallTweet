as yet unclassified
from: aJsonObject
^ (self new)
	id: (aJsonObject at: 'id');
	name: (aJsonObject at: 'name');
	screenName: (aJsonObject at: 'screen_name');
	profileImageUrl: (aJsonObject at: 'profile_image_url');
	description: (aJsonObject at: 'description');
	yourself.