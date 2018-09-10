converting
rosdefinition
	^ definition inject: '' into: [ :acc :item | acc, item rosdefinition, String lf  ]