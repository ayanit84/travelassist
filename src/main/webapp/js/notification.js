(function() {
	// simulate loading (for demo purposes only)
	
	setTimeout( function() {

		
		// create the notification
		var notification = new NotificationFx({
			message : '<p>Your cab has been booked.<br/> CAB- OD 02X81111 INDIGO,<br/> DRV- SONU 7873699142</p>',
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