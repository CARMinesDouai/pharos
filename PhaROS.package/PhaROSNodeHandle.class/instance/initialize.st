initialize-release
initialize 
	super initialize.
	subscribingHandle := Dictionary new.
	topicHandle := Dictionary new.
	receiverDelegate := [: msg :chn | self dispatch: msg for: chn ].
