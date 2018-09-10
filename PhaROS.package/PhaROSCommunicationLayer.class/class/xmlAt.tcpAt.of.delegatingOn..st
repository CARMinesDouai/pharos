as yet unclassified
xmlAt: aPort tcpAt: otherPort of: anIP delegatingOn: aTransport

	^ self new xml: aPort; tcp: otherPort ; ip: anIP; transport: aTransport; configure;  yourself. 