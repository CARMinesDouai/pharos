as yet unclassified
use: aNodeletConstructor as: aNodeletImportName
	
	"=
		# arguments
			1. aPackageConstructor : Object that understand buildNodelet message and gives a nodelet to install in the name.
			2. aPackageImportName : Symbol to install the nodelet.
		# behavior
			install a nodelet with the given name. If there is a nodelet alread installed it check that is the same kind. If is not raise a signal. 
		# error
			 there is alread a nodelet related with this name '.
			
	="

	nodelets at: aNodeletImportName ifPresent: [ : p | 
		(aNodeletConstructor hasConstructed: p) ifFalse: [
			self error: ' there is alread a nodelet related with this name '
		].
	] ifAbsent: [
		| nodelet |
		
		nodelet := aNodeletConstructor buildNodelet. 
		nodelets at: aNodeletImportName put: nodelet.
		nodelet controller: controller.
		nodelet configure. 
	].
	