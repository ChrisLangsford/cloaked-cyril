//this function sends the year to the controller and receives the relevant chart data
function sendChartData (year) {
    //var s = document.getElementById("MyList");
    //var selectedYear = s.options[s.selectedIndex].value;
    //console.log(selectedYear);
    var selectedYear = year;
    $(".year-indicator").empty();
    $(".year-indicator").prepend(selectedYear);

    $.ajax({
        url: "/ajax/renderChart.json",
        type: "POST",
        data: {year_selected: selectedYear},
        success: function(data){AmCharts.makeChart("GPchartdiv", data);}
    });

    $.ajax({
        url: "/ajax/profit_per_garment_type.json",
        type: "POST",
        data: {year_selected: selectedYear},
        success: function(data){AmCharts.makeChart("profitChartdiv", data);}
    });

}

function garmetInit(data) {
  var chart1;
  var chartData1 = data;
  console.log('called');
  $(function () {
    console.log('jquery ready');
  });

    console.log('ready');
    // SERIAL CHART
    chart1 = new AmCharts.AmSerialChart();
    chart1.dataProvider = chartData1;
    chart1.categoryField = "order_year";
    chart1.rotate = true;
    chart1.depth3D = 20;
    chart1.angle = 30;
    chart1.addListener("clickGraphItem", handleClick);
    chart1.columnSpacing3D = 1;
    chart1.columnSpacing = 10;

    // AXES
    // Category
    var categoryAxis = chart1.categoryAxis;
    categoryAxis.gridPosition = "start";
    categoryAxis.axisColor = "#DADADA";
    categoryAxis.fillAlpha = 1;
    categoryAxis.gridAlpha = 0;
    categoryAxis.fillColor = "#FAFAFA";

    // value
    var valueAxis = new AmCharts.ValueAxis();
    valueAxis.axisColor = "#DADADA";
    valueAxis.title = "Number of Garments produced";
    valueAxis.gridAlpha = 0.1;
    chart1.addValueAxis(valueAxis);

    // GRAPH
    var graph1 = new AmCharts.AmGraph();
    graph1.title = "Number of Garments produced";
    graph1.valueField = "count";
    graph1.type = "column";
    graph1.balloonText = "<strong>[[value]]</strong> Garments produced in [[category]]";
    graph1.lineAlpha = 0;
    graph1.fillColors = "#5fb503";
    graph1.fillAlphas = 1;
    graph1.columnWidth = 0.2;
    chart1.addGraph(graph1);

    chart1.creditsPosition = "top-right";

    // WRITE
    chart1.write("GPYchartdiv");

  function handleClick(event)
  {
    sendChartData(event.item.category)
  }
};
