$( function () {

	var t = $('#detail-table').DataTable();

	t.on('click', '.btn-detail', function(event) {
		event.preventDefault();
		
		var postData = {
			'task_id' : $(this).data('task_id'),
			'order_id' : $(this).data('order_id'),
		};

		$.ajax({
			url : base_url + 'site/detailV2',
			type : 'POST',
			dataType : 'JSON',
			data : postData,
			success : function (data) {
				if ( data.type == 'done' ) {
					$('#text_order_name').text(data.msg[0].order_name);
					$('#text_order_type').text(data.msg[0].order_type);
					$('#text_order_brief').text(data.msg[0].order_brief);
					$('#text_order_source').text(data.msg[0].order_source);
					$('#text_order_output').text(data.msg[0].order_output);
					$('#text_order_deadline').text(moment(data.msg[0].order_deadline).format('DD MMMM YYYY'));
					$('#text_order_by').text(data.msg[0].create_by+' - '+data.msg[0].create_name);
					$('#text_item_graphics_name').text(data.msg[0].item_graphics_name);
					$('#text_item_graphics_category').text(data.msg[0].item_graphics_category);
					$('#text_item_graphics_sub_category').text(data.msg[0].item_graphics_sub_category);
					$('#text_taken_by').text(data.msg[0].taken_by+' - '+data.msg[0].taken_name);
					$('#text_taken_date').text( (data.msg[0].taken_date ? moment(data.msg[0].taken_date).format('DD MMMM YYYY') : '-' ) );
					$('#text_finish_date').text( (data.msg[0].finish_date ? moment(data.msg[0].finish_date).format('DD MMMM YYYY') : '-' ) );
					
					$('#exampleModal').modal('show');
				}
			}
		});

	});

});