setting
initialize 
	super initialize.
	when := PhaROSTopicFlux defaultConditional.
	adapter := PhaROSTopicFlux defaultAdapter.
	forDebug := false.
	callback := [ :msg :chn | self debug: 'Warning! This topic conection it has no callback configured! '].

	errors := Dictionary new.