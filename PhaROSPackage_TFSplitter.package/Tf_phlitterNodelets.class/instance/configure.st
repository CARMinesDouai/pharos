as yet unclassified
configure
	tfPublishers := Dictionary new.
	(self controller node buildConnectionFor: '/tf' ) 
								typedAs: 'tf/tfMessage'; 
								for: [ : message | self tfCallBack: message ];
								connect .