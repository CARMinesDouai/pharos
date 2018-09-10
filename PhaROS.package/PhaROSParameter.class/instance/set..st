mutual exclusion - explicit
set: aValue
	self setNotBinded: aValue.
	transport sync: self.