$(function(){

	var myip = "";
	$.get('https://jsonip.com/', function(r){ $("#server").val(r.ip); });
	myip = $("#server").val();
	$("#login-form").on('submit', function(e){
		e.preventDefault();
		$.ajax({
			url : base_url + "site/signin",
			type : "POST",
			dataType : "JSON",
			data : $(this).serialize(),
			beforeSend : function(){
				$("#btn-submit").html ( 'Processing...' ).removeClass("btn-primary").addClass("btn-warning").prop("disabled", true);
			},
			success : function(data){
				if ( data.type == "done" ){
					if (data.url) window.location.href = data.url;
					else window.location.replace(base_url);
				}
				else{
					Swal.fire ( "Failed!", data.msg, "error");
					$("#btn-submit").html ( 'LOGIN' ).removeClass("btn-warning").addClass("btn-primary").prop("disabled", false);
				}				
			},
			error : function(){
				Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error");
			},
			complete : function(){
				// $("#btn-submit").html ( 'LOGIN' ).removeClass("btn-warning").addClass("btn-primary").prop("disabled", false);
			}
		});
	});

});