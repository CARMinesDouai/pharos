*PhaROS
log: aLog
	StandardFileStream stdout nextPutAll: aLog.
	StandardFileStream stdout nextPutAll: String crlf.