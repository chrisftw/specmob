$(function(){
	$('.selectable-requirement').click(function(){
		var myId = $(this).data('requirement-id');
		// Show only requirements with this id
		
		//...
		
		
		// set the form category_id to this id
		$('#category_id').val(myId);
	})
});
