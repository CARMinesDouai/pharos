header-loading
initFieldFrom: bytes
	| separatorIndex fieldNameBytes fieldName fieldValueBytes fieldValue |
	
	separatorIndex := bytes indexOf: self headerFieldSeparator.
	fieldNameBytes := bytes copyFrom: 1 to: separatorIndex - 1.
	fieldName := self stringFrom: fieldNameBytes.
	fieldValueBytes := bytes copyFrom: separatorIndex + 1 to: bytes size.
	fieldValue := self valueFrom: fieldValueBytes forField: fieldName.
	self header at: fieldName put: fieldValue.