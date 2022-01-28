$( function () {

	$('.btn-new-web-designer').on('click', function(event) {
		event.preventDefault();

		$('#exampleModal').modal('show');
	});

	var t = $('#web-designer-table').DataTable({
		"processing" : true,
		"language": {
			"processing": '<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
		},
		"serverSide": true, 
		"order": [], 
		"ajax": {
			"url": base_url + "item_graphic/view_web_designer",
			"type": "POST"
		},
		"searchDelay" : 750,
		"columnDefs"	: [{
			"targets"	: [0,3],
			"orderable"	: false
		}]
	});
	
	$("#web-designer-form").ajaxForm({
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
		var row_id = $(this).data('id');
		var type = $(this).data('type');
		$.ajax({
			url: base_url + "item_graphic/find",
			type: 'post',
			data: { 'key' : row_id, 'type' : type },
			dataType: 'json',
			success: function(data){
				if (data.type != 'done'){
					var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
					var sa_type = (data.type == 'done') ? "success" : "error";
					Swal.fire({ title:sa_title, type:sa_type, html:data.msg });
				}
				else {
					$("#web_designer_type").val ( data.msg[0].web_designer_type );
					$("#web_designer_name").val ( data.msg[0].web_designer_name );

					$("#id").val ( row_id );
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
		var type = $(this).data('type');
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
			data: { 'key' : row_id, 'type' : type },
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