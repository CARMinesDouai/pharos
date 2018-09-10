private
fillWithExistingGeneratedTypeClasses
	
	| existingTypeClasses |
		
	"we miss classes if we restrict on the Generated RPackage"
	"[ existingTypeClasses := (RPackageOrganizer default  packageNamed: 'PhaROSGenerated') classes ] on: KeyNotFound do: [ :e | ^ self ]."
	
	existingTypeClasses := PhaROSValue allSubclasses select: [ :c | c respondsTo: #rosTypeName ].
	existingTypeClasses := existingTypeClasses asSortedCollection: [ :class1 :class2 | class1 typeCreationOrder <= class2 typeCreationOrder ].
	
	existingTypeClasses do: [ : aTypeClass |
		|aTypeId|
		aTypeId := aTypeClass rosTypeName.

		self browser at: aTypeId ifAbsentPut: [
				|firstLevel newMessageType newType rosTypeDefinition|
				
				rosTypeDefinition := aTypeClass rosTypeDefinition replaceAll: Character cr with: Character lf. "be carreful, Pharo put Character cr ..."
				firstLevel := (Character lf split: rosTypeDefinition) collect: [:each | each trim ] thenSelect: [ :str | str size > 3 ].
				
				newMessageType := self typeNamed: aTypeId for: firstLevel.
				newType := newMessageType build.
				newType md5Sum: aTypeClass rosMd5Sum.
				newMessageType
		]]
	