as yet unclassified
from: aJsonObject
^ (self new)
	id: (aJsonObject at: 'id');
	text: (aJsonObject at: 'text');
	createdAt: (aJsonObject at: 'created_at');
	user: (aJsonObject at: 'user');
	entities: (aJsonObject at: 'entities');
	yourself.