gt-inspector-extension
gtInspectorItemsIn: composite
        <gtInspectorPresentationOrder: 0>
        ^ (composite table)
                title: 'Values';
                display: [ self associations ];
                children: [ :each |
                        (each value isKindOf: PhaROSValue)
                                ifTrue: [ each value associations ]
                                ifFalse: [ #() ] ];
                column: 'Key'
                        evaluated: [:each | each key ];
                column: 'Value'
                        evaluated: [:each | each value ]
