setting
on: anErrorClass do: aValuable
	^ (errors at: anErrorClass ifAbsentPut: [ Set new ]) add: aValuable.