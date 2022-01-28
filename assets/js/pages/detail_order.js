$( function () {

    /*var ganttData = [
    {
        id: 1, name: "Feature 1", series: [
        { name: "Actual", start: new Date(2010,00,02), end: new Date(2010,00,05), color: "#f0f0f0" }
        ]
    }, 
    {
        id: 2, name: "Feature 2", series: [
        { name: "Planned", start: new Date(2010,00,05), end: new Date(2010,00,20) },
        { name: "Actual", start: new Date(2010,00,06), end: new Date(2010,00,17), color: "#f0f0f0" },
        { name: "Projected", start: new Date(2010,00,06), end: new Date(2010,00,17), color: "#e0e0e0" }
        ]
    }, 
    {
        id: 3, name: "Feature 3", series: [
        { name: "Planned", start: new Date(2010,00,11), end: new Date(2010,01,03) },
        { name: "Actual", start: new Date(2010,00,15), end: new Date(2010,01,03), color: "#f0f0f0" }
        ]
    }, 
    {
        id: 4, name: "Feature 4", series: [
        { name: "Planned", start: new Date(2010,01,01), end: new Date(2010,01,03) },
        { name: "Actual", start: new Date(2010,01,01), end: new Date(2010,01,05), color: "#f0f0f0" }
        ]
    },
    {
        id: 5, name: "Feature 5", series: [
        { name: "Planned", start: new Date(2010,02,01), end: new Date(2010,03,20) },
        { name: "Actual", start: new Date(2010,02,01), end: new Date(2010,03,26), color: "#f0f0f0" }
        ]
    }, 
    {
        id: 6, name: "Feature 6", series: [
        { name: "Planned", start: new Date(2010,00,05), end: new Date(2010,00,20) },
        { name: "Actual", start: new Date(2010,00,06), end: new Date(2010,00,17), color: "#f0f0f0" },
        { name: "Projected", start: new Date(2010,00,06), end: new Date(2010,00,20), color: "#e0e0e0" }
        ]
    }, 
    {
        id: 7, name: "Feature 7", series: [
        { name: "Planned", start: new Date(2010,00,11), end: new Date(2010,01,03) }
        ]
    }, 
    {
        id: 8, name: "Feature 8", series: [
        { name: "Planned", start: new Date(2010,01,01), end: new Date(2010,01,03) },
        { name: "Actual", start: new Date(2010,01,01), end: new Date(2010,01,05), color: "#f0f0f0" }
        ]
    }];

    console.log(ganttData);*/

    var chartData = [];

    $.ajax({
        url : base_url + 'list_order/view_chart',
        type : 'POST',
        dataType : 'JSON',
        data : {'order_id' : $('#order_id').text()},
        success : function (data) {
            if (data.type == 'done') {
                for (var i = 0; i < data.msg.length; i++) {
                    var temp = {};
                    var series = [];
                    temp['id'] = parseInt(data.msg[i].id);
                    temp['name'] = data.msg[i].name;
                    for (var j = 0; j < data.msg[i].series.length; j++) {
                        var temp2 = {};
                        temp2['name'] = data.msg[i].series[j].name;
                        temp2['start'] = new Date(data.msg[i].series[j].start);
                        temp2['end'] = new Date(data.msg[i].series[j].end);
                        series.push(temp2);
                    }
                    temp['series'] = series;
                    chartData.push(temp);
                }

                console.log(chartData);

                $("#gantt").ganttView({ 
                    data: chartData,
                    slideWidth: 900,
                    behavior: {
                        draggable : false,
                        resizable : false,
                    }
                });
            }
        }
    });

    $(document).on('click', '.btn-send', function() {
        var task_id = $(this).data('id');
        var chat_desc = $('#chat_desc_'+task_id).val();

        $.ajax({
            url : base_url + 'list_order/send_message',
            type : 'POST',
            dataType : 'JSON',
            data : { 'task_id' : task_id, 'chat_desc': chat_desc },
            success : function (data) {
                if (data.type == 'done') {
                    $('#demo-chat-body-'+task_id+' ul').append(data.element);
                    $('#chat_desc_'+task_id).val('');
                }
            }
        });
    });
});