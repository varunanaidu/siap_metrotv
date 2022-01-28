$( function () {
	$('[data-toggle="tooltip"]').tooltip();

    //Timepicker
    $('#timepicker').datetimepicker({
    	use24hours : true,
    	language:'en',
    	format: 'LTS',
    	format: 'HH:mm:ss',
    })

    $('#order_type').on('change', function() {
    	if ( $(this).val() == 2) {
    		show_development();
    	}else{
    		show_daily();
    	}
    });

    $.ajax({
    	url : base_url + 'new_order/get_item_graphic',
    	type : 'POST',
    	dataType : 'JSON',
    	data : {'key' : $('#id').val() },
    	success : function (data) {
    		if ( data.type == 'done' ) {
    			if (data.msg2 == 'Daily') {
    				show_daily();
    			}else{
    				show_development();
    			}
    			for (var i = 0; i < data.msg.length; i++) {
    				$('input[type="checkbox"][value="'+data.msg[i].item_graphics_name+'"]').prop('checked', true);
    				$('input[type="checkbox"][value="'+data.msg[i].item_graphics_name+'"]').data('id', data.msg[i].item_graphics_id);
    				if ( data.msg[i].task_id != '-' ) {
    					$('input[type="checkbox"][value="'+data.msg[i].item_graphics_name+'"]').attr('disabled', true);
    				}
    			}
    		}
    	}
    });

    $(document).on('click', '.badge-primary', function(event) {
    	event.preventDefault();

    	var row_id = $(this).data('id');
    	Swal.fire({
    		title: 'Delete data !',
    		type: 'warning',
    		html: '<span class="italic">Are you sure to delete this attachment ?</span>',
    		showCancelButton: true,
    		confirmButtonText: "Yes, delete it!",
    		confirmButtonColor: "#DD6B55",
    		showLoaderOnConfirm: true,
    	}).then(function(result){
    		if (result.value) {
    			$.ajax({
    				url: base_url + "new_order/delete_attachment",
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

    $('#order-form').on('submit', function(e) {
    	e.preventDefault();

    	var formData = new FormData(this);

    	$('input[type=checkbox]:checked').each(function(index, el) {
    		if ( $(el).is(':disabled') ) {
    			// console.log(el);
    			formData.append('item_graphics_id[]', $(el).data('id'));
    		}
    	});
    	// return;


    	Swal.fire({
    		title: 'Submit data !',
    		type: 'warning',
    		html: '<span class="italic">Are you sure to submit ?</span>',
    		showCancelButton: true,
    		confirmButtonText: "Yes, submit it!",
    		confirmButtonColor: "#DD6B55",
    		showLoaderOnConfirm: true,
    	}).then(function (result) {
    		if (result.value) {
    			$.ajax({
    				url : base_url + 'new_order/save',
    				type : "POST",
    				dataType : "JSON",
    				cache: false,
    				contentType: false,
    				processData: false,
    				data : formData,
    				beforeSend : function(){
    					// $('input[type=checkbox]').prop('disabled', false);
    					$("#btn-submit").html ( 'Processing...' ).removeClass("btn-primary").addClass("btn-warning").prop("disabled", true);
    				},
    				success : function(data){
    					if ( data.type == "done" ){
    						Swal.fire({title : "Success", html : data.msg, type : "success"}).then( function () {
    							window.location.href = base_url;
    						});
    					}
    					else{
    						Swal.fire ( "Failed!", data.msg, "error");
    						$("#btn-submit").html ( 'SIMPAN' ).removeClass("btn-warning").addClass("btn-primary").prop("disabled", false);
    					}				
    				},
    				error : function(){
    					Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error");
    					$("#btn-submit").html ( 'SIMPAN' ).removeClass("btn-warning").addClass("btn-primary").prop("disabled", false);
    				},
    				complete : function(){
				// $("#btn-submit").html ( 'LOGIN' ).removeClass("btn-warning").addClass("btn-primary").prop("disabled", false);
			}
		});
    		} else {
    			Swal.fire('Canceled', 'Canceled submit data', 'warning');
    		}
    	});

    });

    function show_development() {
    	$('#daily_item_graphic').addClass('collapse');
    	$('#tab0').removeAttr('checked');
    	$('#development_item_graphic').removeClass('collapse');
    	$('#tab4').attr('checked', '');
    	$('#order_source_container').attr('style', 'display:none' );
    	$('input[name=time_picker]').val('');
    	$('#time_container').addClass('collapse');
    }

    function show_daily() {
    	$('#development_item_graphic').addClass('collapse');
    	$('#tab4').removeAttr('checked');
    	$('#daily_item_graphic').removeClass('collapse');
    	$('#tab0').attr('checked', '');
    	$('#order_source_container').removeAttr('style');
    	$('#time_container').removeClass('collapse');
    }

});