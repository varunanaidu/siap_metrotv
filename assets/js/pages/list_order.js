$( function () {
	$("#fProgramName").select2({
		placeholder: "--",
	});

	$("#fDesigner").select2({
		placeholder: "--",
	});

	$("#date_range").daterangepicker({
		autoUpdateInput: false,
		locale: {
			cancelLabel: 'Clear'
		},
		ranges: {
			'Today': [moment(), moment()],
			'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
			'Last 7 Days': [moment().subtract(6, 'days'), moment()],
			'Last 30 Days': [moment().subtract(29, 'days'), moment()],
			'This Month': [moment().startOf('month'), moment().endOf('month')],
			'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
		}
	});
	
	$('#date_range').on('apply.daterangepicker', function(ev, picker) {
		$(this).val(picker.startDate.format('YYYY-MM-DD') + " & " + picker.endDate.format('YYYY-MM-DD'));
		if( $(this).val() != '' ) window.location.href = base_url + 'list_order?date=' + picker.startDate.format('YYYY-MM-DD') + "_" + picker.endDate.format('YYYY-MM-DD');
	});

	$('#date_range').on('cancel.daterangepicker', function(ev, picker) {
		$(this).val('');
	});

	$('#btn-filter').on('click', function(event) {
		event.preventDefault();

		fProgramName 	= $('#fProgramName').val();
		fDesigner 		= $('#fDesigner').val();
		date_range 		= $('#date_range').val();
		// console.log(date_range);return;

		temp = date_range.split(' & ');

		// console.log(temp);return;

		if ( fProgramName || fDesigner || date_range ) {
			window.location.href = base_url + 'list_order?date=' + moment(temp[0]).format('YYYY-MM-DD') + "_" + moment(temp[1]).format('YYYY-MM-DD') + '&p=' + fProgramName + '&d=' + fDesigner;
		}

	});

	$('#btn-reset').on('click', function(event) {
		event.preventDefault();

		window.location.href = base_url + 'list_order';

	});

	$(document).on('click', '#get_task', function() {
		var row_id = $(this).data('id');

		Swal.fire({
			title: 'Confirmation !',
			type: 'warning',
			html: '<span class="italic">Are you want to take this job ?</span>',
			showCancelButton: true,
			confirmButtonText: "Yes!",
			cancelButtonText: "No",
			confirmButtonColor: "#DD6B55",
			showLoaderOnConfirm: true,
		}).then(function(result){
			if (result.value) {
				$.ajax({
					url: base_url + "list_order/save",
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
				Swal.fire('Canceled', '', 'warning');
			}
		});

	});

	$(document).on('click', '#set_task_to', function() {
		var type_id = $(this).data("order_type");
		var task_id = $(this).data('id');

		$.ajax({
			url: base_url + "list_order/get_designer",
			type: 'post',
			data: { 'type_id' : type_id },
			dataType: 'json',
			success: function(data){
				if ( data.type == 'done') {
					$('#id').val(task_id);
					$('#type').val('new');
					$('#designerTbl_body').html('');
					for (var i = 0; i < data.msg.length; i++) {
						$('#designerTbl_body').append('<tr><td scope="col">'+data.msg[i].user_nip+'</td><td scope="col">'+data.msg[i].user_name+'</td><td scope="col">'+data.msg[i].active+' active task</td></tr>')
					}
					$('#exampleModal2').modal("show");
				}
			}
		});
	});

	$(document).on('click', '.btn-change', function(event) {
		event.preventDefault();
		var type_id = $(this).data("order_type");
		var task_id = $(this).data('id');

		$.ajax({
			url: base_url + "list_order/get_designer",
			type: 'post',
			data: { 'type_id' : type_id },
			dataType: 'json',
			success: function(data){
				if ( data.type == 'done') {
					$('#id').val(task_id);
					$('#type').val('update');
					$('#designerTbl_body').html('');
					for (var i = 0; i < data.msg.length; i++) {
						$('#designerTbl_body').append('<tr><td scope="col">'+data.msg[i].user_nip+'</td><td scope="col">'+data.msg[i].user_name+'</td><td scope="col">'+data.msg[i].active+' active task</td></tr>')
					}
					$('#exampleModal2').modal("show");
				}
			}
		});
	});

	$(document).on('click', '.btn-update', function() {
		var row_id = $(this).data('id');

		$.ajax({
			url : base_url + 'list_order/progress_form',
			type : 'POST',
			dataType : 'JSON',
			data : {'key' : row_id},
			success : function (data) {
				if ( data.type == 'done') {
					$('#progress').val(data.msg[0].progress);
					$('#progress').attr('min', data.msg[0].progress);
					$('#task_id').val(row_id);
					$('#exampleModal').modal('show');
				}
			}
		})
	});
	
	$("#progress-form").ajaxForm({
		dataType: "json",
		url : base_url + 'list_order/update',
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
	
	$("#set-form").ajaxForm({
		dataType: "json",
		url : base_url + 'list_order/set_task',
		beforeSubmit: function(){
			$('#btn-submit-2').removeClass('btn-primary').addClass('btn-warning').prop('disabled', true);
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
			$('#btn-submit-2').removeClass('btn-warning').addClass('btn-primary').prop('disabled', false);
		}
	});
});