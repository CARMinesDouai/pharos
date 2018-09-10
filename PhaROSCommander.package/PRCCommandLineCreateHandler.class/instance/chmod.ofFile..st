utilities
chmod: rights ofFile: stringPath
	^ OSProcess command: ('chmod {1} {2}' format: { rights . stringPath }).