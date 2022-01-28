$( function () {

	$('.btn-new-contact').on('click', function(event) {
		event.preventDefault();

		$("#user_nip").select2({
			placeholder: "Type NIP or Name",
			minimumInputLength: 2,
			ajax: {
				url: base_url + "contact/search_emp",
				dataType: "json",
				delay: 250,
				processResults: function (data) {
					return {
						results: data
					};
				},
				cache: true
			},
			allowClear: true
		});

	// $("#user_nip").select2('open');

	$('#exampleModal').modal('show');
});


	$('#user_nip').on('change', function () {

		var user = $(this).val();
		var data = {"nip" :user};
		$.ajax({
			url : base_url + "contact/get_emp_data",
			type : "POST",
			dataType : "JSON",
			data : data,
			success : function(data){
				if (data.type == 'done') {
					$('#user_name').val(data.msg.data[0].NAME);
					$('#user_email').val(data.msg.data[0].EMAIL);
					$('#user_phone').val(data.msg.data[0].PHONE);
				}
			},
			error : function(){
				Swal.fire ( "Failed!", "Error occurred, Please refresh your browser.", "error" );
			}
		});
	});

	$('#role_id').on('change', function() {
		var val = $(this).val();

		if (val == 2) {
			$('#type_container').removeAttr('style');
		}else{
			$('#type_container').css('display', 'none');
		}
	});

	var t = $('#contact-table').DataTable({
		"processing" : true,
		"language": {
			"processing": '<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
		},
		"serverSide": true, 
		"order": [], 
		"ajax": {
			"url": base_url + "contact/view_contact",
			"type": "POST"
		},
		"searchDelay" : 750,
		"columnDefs"	: [{
			"targets"	: [0,8],
			"orderable"	: false
		}]
	});
	
	$("#contact-form").ajaxForm({
		dataType: "json",
		url : base_url + 'contact/save',
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
		$.ajax({
			url: base_url + "contact/find",
			type: 'post',
			data: { 'key' : row_id },
			dataType: 'json',
			success: function(data){
				if (data.type != 'done'){
					var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
					var sa_type = (data.type == 'done') ? "success" : "error";
					Swal.fire({ title:sa_title, type:sa_type, html:data.msg });
				}
				else {
					$("#user_nip").html('<option value="'+row_id+'" selected>'+row_id+' - '+data.msg[0].user_name+'</option>');
					$("#user_name").val ( data.msg[0].user_name );
					$("#user_comp").val ( data.msg[0].user_comp );
					$("#user_email").val ( data.msg[0].user_email );
					$("#user_phone").val ( data.msg[0].user_phone );
					$("#user_type").val ( data.msg[0].user_type );
					$("#role_id").val ( data.msg[0].role_id );
					if ( data.msg[0].type_id != 0 ) {
						$('#type_id').val( data.msg[0].type_id );
						$('#type_container').removeAttr('style');
					}
					$("#type").val ( "update" );
					$("#id").val ( row_id );

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
					url: base_url + "contact/delete",
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