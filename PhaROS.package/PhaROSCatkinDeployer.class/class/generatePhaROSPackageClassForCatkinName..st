generating - PhaROSPackage
generatePhaROSPackageClassForCatkinName: catkinPackageName

	| newPhaROSPackageClassName codeExample |
	
	newPhaROSPackageClassName := catkinPackageName capitalized, 'Package'.
	
	PhaROSPackage 
			subclass: newPhaROSPackageClassName asSymbol 
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: newPhaROSPackageClassName.
	
	"add a script method as an example"
	codeExample := 'scriptExample
		"please load the package PhaROS-PackageExample from PhaROS repository "'.
	
	Smalltalk globals at: #PhaROSExamplePackage ifPresent: [ :exampleClass | 
		codeExample := (exampleClass>>#scriptTopicSubscribingExample) sourceCode ].
	
	newPhaROSPackageClassName asClass
		compile: codeExample
 		classified: 'scripts'. 

	^ newPhaROSPackageClassName asClass
