$( function () {

	function remove_background(name)
	{
		for(var count = 1; count <= 5; count++)
		{
			$('#'+name+'_'+count).css('color', '#ccc');
		}
	}

	$(document).on('click', '.rating', function() {
		var index = $(this).data('index');
		var name = $(this).data('name');
		var task_id = $(this).data('task_id');
		remove_background(name);
		for(var count = 1; count <= index; count++)
		{
			$('#'+name+'_'+count).css('color', '#ffcc00');
		}
		if ( $(this).hasClass('head') ) {
			$('#rating_count').val(index);
		}else{
			$('input[name="detail_rating_count['+task_id+']"]').val(index);
		}
	});
	
	$("#rating-form").ajaxForm({
		dataType: "json",
		url : base_url + 'site/save_rating',
		beforeSubmit: function(){
			$('#btn-submit').removeClass('btn-primary').addClass('btn-warning').prop('disabled', true);
		},
		success: function(data){
			var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
			var sa_type = (data.type == 'done') ? "success" : "warning";
			Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
				if (data.type == 'done') window.location.reload(); 
			});
		},
		error: function(){
			Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error" );
		},
		complete: function(){
			$('#btn-submit').removeClass('btn-warning').addClass('btn-primary').prop('disabled', false);
		}
	});

	$(document).on('click', '.btn-edit', function(event) {
		event.preventDefault();

		var order_id = $(this).data('id');

		window.location.href = base_url + 'new_order/edit_order/' + order_id;

	});

	$(document).on('click', '.btn-delete', function(event) {
		event.preventDefault();

		var row_id = $(this).data('id');
		Swal.fire({
			title: 'Delete data !',
			type: 'warning',
			html: '<span class="italic">Are you sure to delete this order ?</span>',
			showCancelButton: true,
			confirmButtonText: "Yes, delete it!",
			confirmButtonColor: "#DD6B55",
			showLoaderOnConfirm: true,
		}).then(function(result){
			if (result.value) {
				$.ajax({
					url: base_url + "new_order/delete",
					type: 'post',
					data: { 'key' : row_id },
					dataType: 'json',
					success: function(data){
						var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
						var sa_type = (data.type == 'done') ? "success" : "error";
						Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){
							if (data.type == 'done') window.location.reload();
						});
					}
				});
			}else{
				Swal.fire('Canceled', 'Canceled remove data', 'warning');
			}
		});

	});

});