validation
checkVersion: aByteSymbol 
	
	^ ((self allowedPharoVersionNames detect: [: t | t = aByteSymbol] ifNone: [ 
			self exitFailure: aByteSymbol asString, ' is not a valid Pharo version. Allowed versions are:
				--version=14
				--version=20
				--version=30
				--version=40
				--version=stable
				--version=alpha
			'
	]) asString copyReplaceAll: '.' with: '') asSymbol .
