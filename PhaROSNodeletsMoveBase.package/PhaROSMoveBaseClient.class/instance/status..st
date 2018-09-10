accessing
status: goalStatusArray
	
	goalStatusArray status_list do: [
		:status |
		self registerStatus: status.	
	]