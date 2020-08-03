<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/emn178/chartjs-plugin-labels/src/chartjs-plugin-labels.js"></script>
</head>
</head>
<body>
<canvas id="myChart" width="400" height="400"></canvas>
<script>
var labels =["Red", "Blue", "Yellow"];
var data = [300, 50, 100];
var color = ["#FF6384", "#36A2EB", "#FFCE56"];


		

//config.data.labels.push('data'+config.data.labels.length)

function removeData(chart) {
    chart.data.labels.pop();
    chart.data.datasets.forEach((dataset) => {
        dataset.data.pop();
    });
    chart.update();
}





/*
		Chart.pluginService.register({
		  beforeDraw: function(chart) {
		    var width = chart.chart.width,
		        height = chart.chart.height,
		        ctx = chart.chart.ctx;

		    ctx.restore();
		    var fontSize = (height / 114).toFixed(2);
		    ctx.font = fontSize + "em sans-serif";
		    ctx.textBaseline = "middle";

		    var text = "",
		        textX = Math.round((width - ctx.measureText(text).width) / 2),
		        textY = height / 2;

		    ctx.fillText(text, textX, textY);
		    ctx.save();
		  }
		});
*/
		var chart = new Chart(document.getElementById('myChart'), {
		  type: 'doughnut',
		  data: {
				  labels: [
					    "Red",
					    "Blue",
					    "Yellow"
					  ],
					  datasets: [
					    {
					      data: [300, 50, 100],
					      backgroundColor: [
					        "#FF6384",
					        "#36A2EB",
					        "#FFCE56"
					      ],
					      hoverBackgroundColor: [
					        "#FF6384",
					        "#36A2EB",
					        "#FFCE56"
					      ]
					    }]
					},
		  options: {
		    responsive: false,
		    legend: {
		      display: false
		    },
			//pieceLabel: { mode:"label", position:"outside", fontSize: 11, fontStyle: 'bold' }
		    plugins: {
		        labels: {
		          // render 'label', 'value', 'percentage', 'image' or custom function, default is 'percentage'
		        	render: function (args) {
    					return args.label + '\n' + args.percentage + '%';
  					}
		        }
		    }
		  }
		});
		

var myChart = new Chart(ctx, config);
		
function addData(chart, label, data) {
    chart.data.labels.push(label);
    chart.data.datasets.data.push(data);
    chart.update();
}
		
addData('myChart', 'pls', 80);

</script>
</body>
</html>