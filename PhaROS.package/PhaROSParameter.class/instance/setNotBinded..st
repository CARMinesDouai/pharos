as yet unclassified
setNotBinded: aValue
	(self checkIs: aValue) ifFalse: [  self error: 'ERROR Setting value to parameter. Wrong type! ', aValue class name ].
	aValue = value  ifFalse: [
 		self noteOnChange: aValue oldValue: value. 
	].
	value:= aValue.