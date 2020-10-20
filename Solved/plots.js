
d3.csv("assets/winequality_red_headers_fixed.csv").then(function (data, err) {
  if (err) throw err;

  // Reference to button
  var button = d3.select("#filter-btn");

  // // Reference to table body
  // var tbody = d3.select("tbody");

  // parse data
  data.forEach(function (data) {
    data.DataA = +data.fixed_acidity;
    data.DataB = +data.volatile_acidity;
    data.DataC = +data.citric_acid;
    data.DataD = +data.residual_sugar;
    data.DataE = +data.chlorides;
    data.DataF = +data.free_sulfur_dioxide;
    data.DataG = +data.total_sulfur_dioxide;
    data.DataH = +data.density;
    data.DataI = +data.pH;
    data.DataJ = +data.sulphates;
    data.DataK = +data.alcohol;
    data.DataL = +data.quality;
  });

  //console.log(data.length);

  //Find maxima
  var maxDataA = d3.max(data, function (d) { return d.DataA; });
  var maxDataB = d3.max(data, function (d) { return d.DataB; });
  var maxDataC = d3.max(data, function (d) { return d.DataC; });
  var maxDataD = d3.max(data, function (d) { return d.DataD; });
  var maxDataE = d3.max(data, function (d) { return d.DataE; });
  var maxDataF = d3.max(data, function (d) { return d.DataF; });
  var maxDataG = d3.max(data, function (d) { return d.DataG; });
  var maxDataH = d3.max(data, function (d) { return d.DataH; });
  var maxDataI = d3.max(data, function (d) { return d.DataI; });
  var maxDataJ = d3.max(data, function (d) { return d.DataJ; });
  var maxDataK = d3.max(data, function (d) { return d.DataK; });
  var maxDataL = d3.max(data, function (d) { return d.DataL; });

  //Find minima
  // var minDataA = d3.min(data, function (d) { return d.DataA; });
  // var minDataB = d3.min(data, function (d) { return d.DataB; });
  // var minDataC = d3.min(data, function (d) { return d.DataC; });
  // var minDataD = d3.min(data, function (d) { return d.DataD; });
  // var minDataE = d3.min(data, function (d) { return d.DataE; });
  // var minDataF = d3.min(data, function (d) { return d.DataF; });
  // var minDataG = d3.min(data, function (d) { return d.DataG; });
  // var minDataH = d3.min(data, function (d) { return d.DataH; });
  // var minDataI = d3.min(data, function (d) { return d.DataI; });
  // var minDataJ = d3.min(data, function (d) { return d.DataJ; });
  // var minDataK = d3.min(data, function (d) { return d.DataK; });
  // var minDataL = d3.min(data, function (d) { return d.DataL; });

  //Scale all variables on a 0-100 percent scale

  // Empty lists to collect normalized data
  var list_DataA = [];
  var list_DataB = [];
  var list_DataC = [];


  var list_DataAScaled = [];
  var list_DataBScaled = [];
  var list_DataCScaled = [];
  var list_DataDScaled = [];
  var list_DataEScaled = [];
  var list_DataFScaled = [];
  var list_DataGScaled = [];
  var list_DataHScaled = [];
  var list_DataIScaled = [];
  var list_DataJScaled = [];
  var list_DataKScaled = [];
  var list_DataLScaled = [];

  // Calculate normalized data and collect in lists
  data.forEach(function (data) {
    data.DataAScaled = (data.DataA / maxDataA) * 100;
    data.DataBScaled = (data.DataB / maxDataB) * 100;
    data.DataCScaled = (data.DataC / maxDataC) * 100;
    data.DataDScaled = (data.DataD / maxDataD) * 100;
    data.DataEScaled = (data.DataE / maxDataE) * 100;
    data.DataFScaled = (data.DataF / maxDataF) * 100;
    data.DataGScaled = (data.DataG / maxDataG) * 100;
    data.DataHScaled = (data.DataH / maxDataH) * 100;
    data.DataIScaled = (data.DataI / maxDataI) * 100;
    data.DataJScaled = (data.DataJ / maxDataJ) * 100;
    data.DataKScaled = (data.DataK / maxDataK) * 100;
    data.DataLScaled = (data.DataL / maxDataL) * 100;

    list_DataAScaled.push(data.DataAScaled);
    list_DataBScaled.push(data.DataBScaled);
    list_DataCScaled.push(data.DataCScaled);
    list_DataDScaled.push(data.DataDScaled);
    list_DataEScaled.push(data.DataEScaled);
    list_DataFScaled.push(data.DataFScaled);
    list_DataGScaled.push(data.DataGScaled);
    list_DataHScaled.push(data.DataHScaled);
    list_DataIScaled.push(data.DataIScaled);
    list_DataJScaled.push(data.DataJScaled);
    list_DataKScaled.push(data.DataKScaled);
    list_DataLScaled.push(data.DataLScaled);

    list_DataA.push(data.DataA);
    list_DataB.push(data.DataB);
    list_DataC.push(data.DataC);
  });
  console.log(data);
  var fillcolor = [];

  //Button event handler for scatterpolar graphs
  button.on("click", function () {
    //collect inputs
    var Choice1 = d3.select("#Choice1-input").property("value");
    console.log(Choice1);
    var Choice2 = d3.select("#Choice2-input").property("value");
    var Choice3 = d3.select("#Choice3-input").property("value");
    var Choice4 = d3.select("#Choice4-input").property("value");
    // console.log(choices);
    var DataA1 = list_DataAScaled[Choice1];
    var DataB1 = list_DataBScaled[Choice1];
    var DataC1 = list_DataCScaled[Choice1];
    var DataD1 = list_DataDScaled[Choice1];
    var DataE1 = list_DataEScaled[Choice1];
    var DataF1 = list_DataFScaled[Choice1];
    var DataG1 = list_DataGScaled[Choice1];
    var DataH1 = list_DataHScaled[Choice1];
    var DataI1 = list_DataIScaled[Choice1];
    var DataJ1 = list_DataJScaled[Choice1];
    var DataK1 = list_DataKScaled[Choice1];
    var DataL1 = list_DataLScaled[Choice1];

    var DataA2 = list_DataAScaled[Choice2];
    var DataB2 = list_DataBScaled[Choice2];
    var DataC2 = list_DataCScaled[Choice2];
    var DataD2 = list_DataDScaled[Choice2];
    var DataE2 = list_DataEScaled[Choice2];
    var DataF2 = list_DataFScaled[Choice2];
    var DataG2 = list_DataGScaled[Choice2];
    var DataH2 = list_DataHScaled[Choice2];
    var DataI2 = list_DataIScaled[Choice2];
    var DataJ2 = list_DataJScaled[Choice2];
    var DataK2 = list_DataKScaled[Choice2];
    var DataL2 = list_DataLScaled[Choice2];

    var DataA3 = list_DataAScaled[Choice3];
    var DataB3 = list_DataBScaled[Choice3];
    var DataC3 = list_DataCScaled[Choice3];
    var DataD3 = list_DataDScaled[Choice3];
    var DataE3 = list_DataEScaled[Choice3];
    var DataF3 = list_DataFScaled[Choice3];
    var DataG3 = list_DataGScaled[Choice3];
    var DataH3 = list_DataHScaled[Choice3];
    var DataI3 = list_DataIScaled[Choice3];
    var DataJ3 = list_DataJScaled[Choice3];
    var DataK3 = list_DataKScaled[Choice3];
    var DataL3 = list_DataLScaled[Choice3];

    var DataA4 = list_DataAScaled[Choice4];
    var DataB4 = list_DataBScaled[Choice4];
    var DataC4 = list_DataCScaled[Choice4];
    var DataD4 = list_DataDScaled[Choice4];
    var DataE4 = list_DataEScaled[Choice4];
    var DataF4 = list_DataFScaled[Choice4];
    var DataG4 = list_DataGScaled[Choice4];
    var DataH4 = list_DataHScaled[Choice4];
    var DataI4 = list_DataIScaled[Choice4];
    var DataJ4 = list_DataJScaled[Choice4];
    var DataK4 = list_DataKScaled[Choice4];
    var DataL4 = list_DataLScaled[Choice4];

    var chartdata1 = [
      {
        type: 'scatterpolar',
        r: [DataA1, DataB1, DataC1, DataD1, DataE1, DataF1, DataG1, DataH1, DataI1, DataJ1, DataK1, DataL1],
        theta: ['Fixed acidity<br> (max: ' + maxDataA + ')', 'Volatile acidity<br> (max: ' + maxDataB + ')', 'Citric acid<br> (max: ' + maxDataC + ')', 'Residual sugar<br> (max: ' + maxDataD + ')', 'Chlorides<br> (max: ' + maxDataE + ')', 'Free sulfur dioxide<br> (max:' + maxDataF + ')', 'Total sulfur dioxide<br> (max:' + maxDataG + ')', 'Density<br> (max:' + maxDataH + ')', 'pH<br> (max:' + maxDataI + ')', 'Sulfates<br> (max:' + maxDataJ + ')', 'Alcohol<br> (max:' + maxDataK + ')', 'Quality<br> (max:' + maxDataL + ')'],
        line: { color: 'peru' },
        fill: 'toself',
        fillcolor: '#rgb(12, 45, 67)',
        name: 'Wine_1',
        opacity: 0.5,
        get hovertemplate() {
          return this._hovertemplate;
        },
        set hovertemplate(value) {
          this._hovertemplate = value;
        },
      }
    ]
    var chartdata2 = [
      {
        type: 'scatterpolar',
        r: [DataA2, DataB2, DataC2, DataD2, DataE2, DataF2, DataG2, DataH2, DataI2, DataJ2, DataK2, DataL2],
        theta: ['Fixed acidity<br> (max: ' + maxDataA + ')', 'Volatile acidity<br> (max: ' + maxDataB + ')', 'Citric acid<br> (max: ' + maxDataC + ')', 'Residual sugar<br> (max: ' + maxDataD + ')', 'Chlorides<br> (max: ' + maxDataE + ')', 'Free sulfur dioxide<br> (max:' + maxDataF + ')', 'Total sulfur dioxide<br> (max:' + maxDataG + ')', 'Density<br> (max:' + maxDataH + ')', 'pH<br> (max:' + maxDataI + ')', 'Sulfates<br> (max:' + maxDataJ + ')', 'Alcohol<br> (max:' + maxDataK + ')', 'Quality<br> (max:' + maxDataL + ')'],
        line: { color: 'peru' },
        fill: 'toself',
        fillcolor: '#rgb(12, 45, 67)',
        name: 'Wine_2',
        opacity: 0.5,
        get hovertemplate() {
          return this._hovertemplate;
        },
        set hovertemplate(value) {
          this._hovertemplate = value;
        },
      }
    ]
    var chartdata3 = [
      {
        type: 'scatterpolar',
        r: [DataA3, DataB3, DataC3, DataD3, DataE3, DataF3, DataG3, DataH3, DataI3, DataJ3, DataK3, DataL3],
        theta: ['Fixed acidity<br> (max: ' + maxDataA + ')', 'Volatile acidity<br> (max: ' + maxDataB + ')', 'Citric acid<br> (max: ' + maxDataC + ')', 'Residual sugar<br> (max: ' + maxDataD + ')', 'Chlorides<br> (max: ' + maxDataE + ')', 'Free sulfur dioxide<br> (max:' + maxDataF + ')', 'Total sulfur dioxide<br> (max:' + maxDataG + ')', 'Density<br> (max:' + maxDataH + ')', 'pH<br> (max:' + maxDataI + ')', 'Sulfates<br> (max:' + maxDataJ + ')', 'Alcohol<br> (max:' + maxDataK + ')', 'Quality<br> (max:' + maxDataL + ')'],
        line: { color: 'peru' },
        fill: 'toself',
        fillcolor: '#rgb(12, 45, 67)',
        name: 'Wine_3',
        opacity: 0.5,
        mode: 'columns',
        get hovertemplate() {
          return this._hovertemplate;
        },
        set hovertemplate(value) {
          this._hovertemplate = value;
        },
      }
    ]
    var chartdata4 = [
      {
        type: 'scatterpolar',
        r: [DataA4, DataB4, DataC4, DataD4, DataE4, DataF4, DataG4, DataH4, DataI4, DataJ4, DataK4, DataL4],
        theta: ['Fixed acidity<br> (max: ' + maxDataA + ')', 'Volatile acidity<br> (max: ' + maxDataB + ')', 'Citric acid<br> (max: ' + maxDataC + ')', 'Residual sugar<br> (max: ' + maxDataD + ')', 'Chlorides<br> (max: ' + maxDataE + ')', 'Free sulfur dioxide<br> (max:' + maxDataF + ')', 'Total sulfur dioxide<br> (max:' + maxDataG + ')', 'Density<br> (max:' + maxDataH + ')', 'pH<br> (max:' + maxDataI + ')', 'Sulfates<br> (max:' + maxDataJ + ')', 'Alcohol<br> (max:' + maxDataK + ')', 'Quality<br> (max:' + maxDataL + ')'],
        line: { color: 'peru' },
        fill: 'toself',
        fillcolor: '#rgb(12, 45, 67)',
        name: 'Wine_4',
        opacity: 0.5,
        mode: 'columns',
        get hovertemplate() {
          return this._hovertemplate;
        },
        set hovertemplate(value) {
          this._hovertemplate = value;
        },
      }
    ]

    var layout1 = {
      //wine dataset doesn't have titles, this is a placeholder, will need to use name variable
      title: { text: 'Fixed acidity ' + DataA1.toFixed(2) },
      polar: {
        radialaxis: {
          visible: true,
          range: [0, 100],
          automargin: true
        }
      }
    }
    var layout2 = {
      //wine dataset doesn't have titles, this is a placeholder, will need to use name variable
      title: { text: 'Fixed acidity ' + DataA2.toFixed(2) },
      polar: {
        radialaxis: {
          visible: true,
          range: [0, 100],
          automargin: true
        }
      }
    }        
    var layout3 = {
      //wine dataset doesn't have titles, this is a placeholder, will need to use name variable
      title: { text: 'Fixed acidity ' + DataA3.toFixed(2) },
      polar: {
        radialaxis: {
          visible: true,
          range: [0, 100],
          automargin: true
        }
      }
    }          
    var layout4 = {
      //wine dataset doesn't have titles, this is a placeholder, will need to use name variable
      title: { text: 'Fixed acidity ' + DataA4.toFixed(2) },
      polar: {
        radialaxis: {
          visible: true,
          range: [0, 100],
          automargin: true
        }
      }
    }

    Plotly.newPlot("plot1", chartdata1, layout1);
    Plotly.newPlot("plot2", chartdata2, layout2);
    Plotly.newPlot("plot3", chartdata3, layout3);
    Plotly.newPlot("plot4", chartdata4, layout4);

  });
  
  //End button event handler for scatterpolar graphs
  

  //Toy 3D scatterplot https://plotly.com/javascript/line-and-scatter/
  //https://plotly.com/javascript/3d-scatter-plots/
    // Plotly.d3.csv('https://raw.githubusercontent.com/plotly/datasets/master/3d-scatter.csv', function(err, rows){
  // function unpack(rows, key) {
  // 	return rows.map(function(row)
  // 	{ return row[key]; });}
  
  var trace1 = {
    // x: [data.DataA], y: [data.DataB], z: [data.DataC],
    x: [0, 1, 2], y: [23, 24, 35], z: [7, 2, 14],
    mode: 'markers',
    marker: {
      size: 12,
      line: {
      color: 'rgba(217, 217, 217, 0.14)',
      width: 0.5},
      opacity: 0.8},
    type: 'scatter3d'
  };
  console.log(x);
  // var trace2 = {
  // 	x:unpack(rows, 'x2'), y: unpack(rows, 'y2'), z: unpack(rows, 'z2'),
  // 	mode: 'markers',
  // 	marker: {
  // 		color: 'rgb(127, 127, 127)',
  // 		size: 12,
  // 		symbol: 'circle',
  // 		line: {
  // 		color: 'rgb(204, 204, 204)',
  // 		width: 1},
  // 		opacity: 0.8},
  // 	type: 'scatter3d'};

  var threeDdata = [trace1];
  var layoutD = {margin: {
    l: 0,
    r: 0,
    b: 0,
    t: 0
    }};
  Plotly.newPlot('myDiv1', threeDdata, layoutD);
  

}).catch(function (error) {
  console.log(error);
});

