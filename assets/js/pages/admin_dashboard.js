$( function () {

	var Charts = (function() {

	// Variable

	var $toggle = $('[data-toggle="chart"]');
	var mode = 'light';
	var fonts = {
		base: 'Open Sans'
	}

	// Colors
	var colors = {
		gray: {
			100: '#f6f9fc',
			200: '#e9ecef',
			300: '#dee2e6',
			400: '#ced4da',
			500: '#adb5bd',
			600: '#8898aa',
			700: '#525f7f',
			800: '#32325d',
			900: '#212529'
		},
		theme: {
			'default': '#172b4d',
			'primary': '#5e72e4',
			'secondary': '#f4f5f7',
			'info': '#11cdef',
			'success': '#2dce89',
			'danger': '#f5365c',
			'warning': '#fb6340'
		},
		black: '#12263F',
		white: '#FFFFFF',
		transparent: 'transparent',
	};


	// Methods

	// Chart.js global options
	function chartOptions() {

		// Options
		var options = {
			defaults: {
				global: {
					responsive: true,
					maintainAspectRatio: false,
					defaultColor: (mode == 'dark') ? colors.gray[700] : colors.gray[600],
					defaultFontColor: (mode == 'dark') ? colors.gray[700] : colors.gray[600],
					defaultFontFamily: fonts.base,
					defaultFontSize: 13,
					layout: {
						padding: 0
					},
					legend: {
						display: true,
						position: 'bottom',
						labels: {
							usePointStyle: true,
							padding: 16
						}
					},
					elements: {
						point: {
							radius: 0,
							backgroundColor: colors.theme['primary']
						},
						line: {
							tension: .4,
							borderWidth: 4,
							borderColor: colors.theme['primary'],
							backgroundColor: colors.transparent,
							borderCapStyle: 'rounded'
						},
						rectangle: {
							backgroundColor: colors.theme['warning']
						},
						arc: {
							backgroundColor: colors.theme['primary'],
							borderColor: (mode == 'dark') ? colors.gray[800] : colors.white,
							borderWidth: 4
						}
					},
					tooltips: {
						enabled: true,
						mode: 'index',
						intersect: false,
					}
				},
				doughnut: {
					cutoutPercentage: 83,
					legendCallback: function(chart) {
						var data = chart.data;
						var content = '';

						data.labels.forEach(function(label, index) {
							var bgColor = data.datasets[0].backgroundColor[index];

							content += '<span class="chart-legend-item">';
							content += '<i class="chart-legend-indicator" style="background-color: ' + bgColor + '"></i>';
							content += label;
							content += '</span>';
						});

						return content;
					}
				}
			}
		}

		// yAxes
		Chart.scaleService.updateScaleDefaults('linear', {
			gridLines: {
				borderDash: [2],
				borderDashOffset: [2],
				color: (mode == 'dark') ? colors.gray[900] : colors.gray[300],
				drawBorder: false,
				drawTicks: false,
				drawOnChartArea: true,
				zeroLineWidth: 0,
				zeroLineColor: 'rgba(0,0,0,0)',
				zeroLineBorderDash: [2],
				zeroLineBorderDashOffset: [2]
			},
			ticks: {
				beginAtZero: true,
				padding: 10,
				callback: function(value) {
					if (!(value % 10)) {
						return value
					}
				}
			}
		});

		// xAxes
		Chart.scaleService.updateScaleDefaults('category', {
			gridLines: {
				drawBorder: false,
				drawOnChartArea: false,
				drawTicks: false
			},
			ticks: {
				padding: 20
			},
			maxBarThickness: 10
		});

		return options;

	}

	// Parse global options
	function parseOptions(parent, options) {
		for (var item in options) {
			if (typeof options[item] !== 'object') {
				parent[item] = options[item];
			} else {
				parseOptions(parent[item], options[item]);
			}
		}
	}

	// Push options
	function pushOptions(parent, options) {
		for (var item in options) {
			if (Array.isArray(options[item])) {
				options[item].forEach(function(data) {
					parent[item].push(data);
				});
			} else {
				pushOptions(parent[item], options[item]);
			}
		}
	}

	// Pop options
	function popOptions(parent, options) {
		for (var item in options) {
			if (Array.isArray(options[item])) {
				options[item].forEach(function(data) {
					parent[item].pop();
				});
			} else {
				popOptions(parent[item], options[item]);
			}
		}
	}

	// Toggle options
	function toggleOptions(elem) {
		var options = elem.data('add');
		var $target = $(elem.data('target'));
		var $chart = $target.data('chart');

		if (elem.is(':checked')) {

			// Add options
			pushOptions($chart, options);

			// Update chart
			$chart.update();
		} else {

			// Remove options
			popOptions($chart, options);

			// Update chart
			$chart.update();
		}
	}

	// Update options
	function updateOptions(elem) {
		var options = elem.data('update');
		var $target = $(elem.data('target'));
		var $chart = $target.data('chart');

		// Parse options
		parseOptions($chart, options);

		// Toggle ticks
		toggleTicks(elem, $chart);

		// Update chart
		$chart.update();
	}

	// Toggle ticks
	function toggleTicks(elem, $chart) {

		if (elem.data('prefix') !== undefined || elem.data('prefix') !== undefined) {
			var prefix = elem.data('prefix') ? elem.data('prefix') : '';
			var suffix = elem.data('suffix') ? elem.data('suffix') : '';

			// Update ticks
			$chart.options.scales.yAxes[0].ticks.callback = function(value) {
				if (!(value % 10)) {
					return prefix + value + suffix;
				}
			}

			// Update tooltips
			$chart.options.tooltips.callbacks.label = function(item, data) {
				var label = data.datasets[item.datasetIndex].label || '';
				var yLabel = item.yLabel;
				var content = '';

				if (data.datasets.length > 1) {
					content += '<span class="popover-body-label mr-auto">' + label + '</span>';
				}

				content += '<span class="popover-body-value">' + prefix + yLabel + suffix + '</span>';
				return content;
			}

		}
	}


	// Events

	// Parse global options
	if (window.Chart) {
		parseOptions(Chart, chartOptions());
	}

	// Toggle options
	$toggle.on({
		'change': function() {
			var $this = $(this);

			if ($this.is('[data-add]')) {
				toggleOptions($this);
			}
		},
		'click': function() {
			var $this = $(this);

			if ($this.is('[data-update]')) {
				updateOptions($this);
			}
		}
	});


	// Return

	return {
		colors: colors,
		fonts: fonts,
		mode: mode
	};

})();

$.ajax({
	url : base_url + 'site/get_pie_data_admin',
	type : 'POST',
	dataType : 'JSON',
	success : function (data) {
		if ( data.type == 'done') {
			var myPieChart = new Chart( $('#chart-doughnut'), {
				type : 'doughnut',
				data : {
					datasets	: [{
						data : [data.msg.queue_item, data.msg.my_item, data.msg.finish_item],
						backgroundColor : ['Red', 'Orange', 'lightgreen']
					}],
					labels 		: ['Queue', 'Live', 'Finished'],
				}
			});
		}
	}
})

$.ajax({
	url : base_url + 'site/get_all_designer_task',
	type : 'POST',
	dataType : 'JSON',
	success : function (data) {
		if (data.type == 'done') {

			var chart_data = [];
			for (var i = 0; i < data.msg.datasets.labels.length; i++) {

				var graphOutlines = [];
				var randomR = Math.floor((Math.random() * 130) + 100);
				var randomG = Math.floor((Math.random() * 130) + 100);
				var randomB = Math.floor((Math.random() * 130) + 100);


				var graphOutline = "rgb(" 
				+ (randomR - 80) + ", " 
				+ (randomG - 80) + ", " 
				+ (randomB - 80) + ")";
				graphOutlines.push(graphOutline);

				var temp = {};
				temp['label'] = data.msg.datasets.labels[i].name;
				temp['borderColor'] = graphOutlines;
				// temp['backgroundColor'] = graphOutlines;
				temp['data'] = data.msg.datasets.labels[i].data;
				chart_data.push(temp);
			}

			console.log(chart_data);

			var myLineChart = new Chart( $('#chart-line'), {
				type : 'line',
				options : {
					scales: {
						yAxes: [{
							gridLines: {
								lineWidth: 1,
								color: '#212529',
								zeroLineColor: '#212529'
							},
							ticks: {
								callback: function(value) {
									if (!(value % 10)) {
										return '' + value + '';
									}
								}
							}
						}]
					},
				},
				data : {
					labels: data.msg.months,
					datasets: chart_data
				}
			});		
		}
	}
});

$(document).on('click', '.btn-edit', function(event) {
	event.preventDefault();

	var order_id = $(this).data('id');

	window.location.href = base_url + 'new_order/edit_order/' + order_id;

});

$(document).on('click', '.btn-delete', function(event) {
	event.preventDefault();

	var row_id = $(this).data('id');
	Swal.fire({
		title: 'Delete data !',
		type: 'warning',
		html: '<span class="italic">Are you sure to delete this order ?</span>',
		showCancelButton: true,
		confirmButtonText: "Yes, delete it!",
		confirmButtonColor: "#DD6B55",
		showLoaderOnConfirm: true,
	}).then(function(result){
		if (result.value) {
			$.ajax({
				url: base_url + "new_order/delete",
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