as yet unclassified
from: aJsonObject
^ (self new)
	id: (aJsonObject at: 'id');
	text: (aJsonObject at: 'text');
	createdAt: (aJsonObject at: 'created_at');
	user: (STUser from: (aJsonObject at: 'user'));
	entities: (aJsonObject at: 'entities');
	urls: (((aJsonObject at: 'entities') at:'urls') collect: [:json | STUrl from: json]);
	yourself.