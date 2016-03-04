/**
 * 
 */
function divToggle () {
	$('.view_more img').on('click', function(ev){
		$('.emp-details').css('display','none');
		$(ev.target).closest('.view_more').siblings('.emp-details').css('display','block');
	});
}