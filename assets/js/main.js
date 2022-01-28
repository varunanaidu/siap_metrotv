$( function () {

	update_list_notif();

	setInterval( function () {
		update_list_notif();
	}, 5000);

	function update_list_notif() {
		$.ajax({
			url : base_url + 'site/update_list',
			type : 'POST',
			dataType : 'JSON',
			success  :function (data) {
				if (data.msg != 0) {
					$('.ni-bell-55').addClass('bell');
					$('#notifContainer').html('');
					for (var i = 0; i < data.msg.length; i++) {
						$('#notifContainer').append('<a href="javascript:void(0)" class="list-group-item list-group-item-action">'+
							'<div class="row align-items-center">'+
							'<div class="col ml--2">'+
							'<div class="d-flex justify-content-between align-items-center">'+
							'<div>'+
							'<h4 class="mb-0 text-sm">'+data.msg[i].created_name+'</h4>'+
							'</div>'+
							'<div class="text-right text-muted">'+
							'<small>'+data.msg[i].created_date+'</small>'+
							'</div>'+
							'</div>'+
							'<p class="text-sm mb-0">'+data.msg[i].notification_message+'</p>'+
							'</div></div></a>')
					}
				}
			}
		});
	}

	$('#btn-read-all').on('click', function() {

		$.ajax({
			url : base_url + 'site/read_message',
			type : 'POST',
			dataType : 'JSON',
			success : function (data) {
				if ( data.type == 'done') {
					$('.ni-bell-55').removeClass('bell');
					$('#total_notif').text(0);
					$('#notifContainer').html('<a href="javascript:void(0)" class="list-group-item list-group-item-action">'+
						'Tidak ada pemberitahuan'+
						'</a>');
				}
			}
		})

	});

});