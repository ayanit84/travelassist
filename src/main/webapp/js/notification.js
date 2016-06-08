(function() {
	// simulate loading (for demo purposes only)
	
	setTimeout( function() {

		
		// create the notification
		var notification = new NotificationFx({
			message : '<p>This is just a simple notice. Everything is in order and this is a <a href="#">simple link</a>.</p>',
			layout : 'growl',
			effect : 'scale',
			type : 'notice', // notice, warning, error or success
			onClose : function() {
			
			}
		});

		// show the notification
		notification.show();
		setTimeout(20000);

	}, 1200 );
	
	// disable the button (for demo purposes only)
	this.disabled = true;
})();