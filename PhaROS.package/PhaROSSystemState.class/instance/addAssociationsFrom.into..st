initialize-release
addAssociationsFrom: array into: dict
	array do: [:element|
		dict at: element first put: element second]
