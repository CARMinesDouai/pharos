calling
md5Sum: aTypeId
	| md5 |
	md5 := PhaROSSystemLauncher instance rosMsgMd5: aTypeId. 
	" put the \n character away "
	^ md5 = '' ifTrue: [ md5 ] ifFalse: [ md5 copyFrom: 1 to: md5 size -1 ].
	