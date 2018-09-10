as yet unclassified
merge
	
	messages size = 2 ifFalse: [ 
		self debug: 'waiting for have data from two topics to start merging'
	] ifTrue:[
	
		self checkStamps ifTrue: [

			(condition cull: ((messages at: that ) at: 1) cull:((messages at:this) at:1)) ifTrue: [
				outgoing send: [ :msg |
					transformation cull: msg cull: ((messages at: that ) at: 1) cull:((messages at:this) at:1)
				].
			]	.
		] ifFalse: [self log: 'data out of syncro or too old']
	].