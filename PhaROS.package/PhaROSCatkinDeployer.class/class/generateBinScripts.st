generating - PhaROSPackage
generateBinScripts
	|catkinPackageDirectory package editScript headlessScript pharosScript |
	
	catkinPackageDirectory := Smalltalk imageDirectory parent.
	package := catkinPackageDirectory basename.
	
	editScript := catkinPackageDirectory / 'bin' / 'edit'.
	editScript writeStreamDo:
		[:stream | stream << (self editScriptForPhaROSPackageNamed: package) ].
	
	headlessScript := catkinPackageDirectory / 'bin' / 'headless'.
	headlessScript writeStreamDo:
		[:stream | stream << (self headlessScriptForPhaROSPackageNamed: package) ].

	pharosScript := catkinPackageDirectory / 'bin' / 'pharos'.
	pharosScript writeStreamDo:
		[:stream | stream << (self pharosScriptForPhaROSPackageNamed: package) ].

	OSProcess command: ('chmod 755 {1}/*' format: { (catkinPackageDirectory / 'bin') pathString }).
	