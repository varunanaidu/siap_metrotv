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
    		$('#daily_item_graphic').addClass('collapse');
    		$('#tab0').removeAttr('checked');
    		$('#development_item_graphic').removeClass('collapse');
    		$('#tab4').attr('checked', '');
    		$('#order_source_container').attr('style', 'display:none' );
    		$('input[name=time_picker]').val('');
    		$('#time_container').addClass('collapse');
    	}else{
    		$('#development_item_graphic').addClass('collapse');
    		$('#tab4').removeAttr('checked');
    		$('#daily_item_graphic').removeClass('collapse');
    		$('#tab0').attr('checked', '');
    		$('#order_source_container').removeAttr('style');
    		$('#time_container').removeClass('collapse');
    	}
    });

    $('#other1, #other2, #other3, #other4').on('change', function() {
    	if ($(this).is(':checked')) {
    		$(this).closest('.input-group').find('input[type=text]').removeAttr('disabled');
    	}else{
    		$(this).closest('.input-group').find('input[type=text]').attr('disabled', '');
    		$(this).closest('.input-group').find('input[type=text]').val('');
    	}
    });

    $('#order-form').on('submit', function(e) {
    	e.preventDefault();

    	var formData = new FormData(this);

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

});