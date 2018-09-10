instance creation
onTopic: aPhaROSTopicString ofType: aTypeString forNode: aPackageObject

	" to be called inside a PackageObject like this:
		PhaROSLastSubscriptionValue onTopic: '/example/string' ofType: 'std_msgs/String' forNode: self.
	 "
	| inst |
	inst := self new.
	(aPackageObject controller node buildConnectionFor: aPhaROSTopicString ) 
			typedAs: aTypeString; 
			for: [ :msg | inst value: msg ];
			connect .
	^inst