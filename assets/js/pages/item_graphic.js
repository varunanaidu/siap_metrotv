$( function () {

	$('.btn-new-item_graphic').on('click', '', function() {
		$('#exampleModal').modal('show');
	});

	var t = $('#item_graphic-table').DataTable({
		"processing" : true,
		"language": {
			"processing": '<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
		},
		"serverSide": true, 
		"order": [], 
		"ajax": {
			"url": base_url + "item_graphic/view_item_graphic",
			"type": "POST"
		},
		"searchDelay" : 750,
		"columnDefs"	: [{
			"targets"	: [0,6],
			"orderable"	: false
		}]
	});
	
	$("#item_graphic-form").ajaxForm({
		dataType: "json",
		url : base_url + 'item_graphic/save',
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

	t.on('click', '.btn-edit', function () {
		var item_graphic_id = $(this).data('id');
		var item_score_id = $(this).data('item_score_id');
		$.ajax({
			url: base_url + "item_graphic/find",
			type: 'post',
			data: { 'item_graphic_id' : item_graphic_id },
			dataType: 'json',
			success: function(data){
				if (data.type != 'done'){
					var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
					var sa_type = (data.type == 'done') ? "success" : "error";
					Swal.fire({ title:sa_title, type:sa_type, html:data.msg });
				}
				else {
					$("#id").val ( item_graphic_id );
					$("#item_score_id").val ( item_score_id );
					$("#type_id").val ( data.msg[0].type_id );
					$("#item_graphic_category").val ( data.msg[0].item_graphic_category );
					$("#item_graphic_sub_category").val ( data.msg[0].item_graphic_sub_category );
					$("#item_graphic_name").val ( data.msg[0].item_graphic_name );
					$("#item_score_count").val ( data.msg[0].item_score_count );
					$("#item_graphic_desc").val ( data.msg[0].item_graphic_desc );
					$("#type").val ( "update" );

					var mod = $('#exampleModal');
					mod.find('#modal-type').text( 'Edit Entry' );
					mod.modal('show');
				}
			},
			error : function(){
				Swal.fire ( "(500)", "Error Occurred, Please refresh your browser.", "error" );
			}
		});
	});

	t.on('click', '.btn-delete', function () {
		var row_id = $(this).data('id');
		var row_name = $(this).data('name');
		Swal.fire({
			title: 'Delete data !',
			type: 'warning',
			html: '<span class="italic">Are you sure to delete <strong>' + row_name + '</strong> ?</span>',
			showCancelButton: true,
			confirmButtonText: "Yes, delete it!",
			confirmButtonColor: "#DD6B55",
			showLoaderOnConfirm: true,
		}).then(function(result){
			if (result.value) {
				$.ajax({
					url: base_url + "item_graphic/delete",
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