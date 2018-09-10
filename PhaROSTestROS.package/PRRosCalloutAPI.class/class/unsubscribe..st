publish-subscribe
unsubscribe: aSubscriptionAssoc
	"Pass me the result of the subscribeTo: call"
	OSProcess command: 'rosnode kill /', (aSubscriptionAssoc key first).
	aSubscriptionAssoc key second terminate.