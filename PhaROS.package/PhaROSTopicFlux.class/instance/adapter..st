accessing
adapter: anAdaption
	adapter ifNil: [
		adapter := anAdaption adaptToAdapter.		
	] ifNotNil: [
		adapter \> anAdaption.
	]
	