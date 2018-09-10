decoding
addTo: dataStream bodyPartAt: dataIndex from: bytes
	dataStream nextPut: (self stringFrom: bytes)