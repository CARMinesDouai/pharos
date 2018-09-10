as yet unclassified
package: aPackageName type:aType named: aName args: arguments
	^ self addChild: ((PhaROSNodeBuilder package: aPackageName type:aType named: aName)  args: arguments) 