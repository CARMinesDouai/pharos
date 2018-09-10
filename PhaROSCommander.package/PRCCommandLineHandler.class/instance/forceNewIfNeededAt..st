accessing
forceNewIfNeededAt: aPackageFileReference
	(aPackageFileReference) exists ifTrue: [ 
		self forceNewPackage ifTrue: [
			(aPackageFileReference) deleteRecursively 
		] ifFalse: [
			^ self exitFailure: 'The package already exists in the source folder. Add --force-new for deleting the existant package' 
		].
	].
	aPackageFileReference createDirectory