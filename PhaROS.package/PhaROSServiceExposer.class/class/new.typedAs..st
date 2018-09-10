as yet unclassified
new: aServiceName typedAs: aTypeID
	^ self new name: aServiceName; type: (PhaROSTypeBrowser instance serviceType: aTypeID)  ; yourself.