pseudo-dsl
registerAlterName
	" This is an abstract class. Does not apply "
	self = PhaROSCollectionType ifFalse: [ 
		super registerAlterName.
	 ]