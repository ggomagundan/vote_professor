window.addEventListener 'load', ->
  vote_info = new PouchDB("vote-info")
  vote_data = new PouchDB("vote-data")
  res = vote_info.put({
    name: "Brand",
    colorByPoint: true
  })
  console.log res
  data = [

    {
      name: 'Microsoft Internet Explorer'
      y: 56.33
    }
    {
      name: 'Chrome'
      y: 24.03
      sliced: true
      selected: true
    }
    {
      name: 'Firefox'
      y: 10.38
    }
    {
      name: 'Safari'
      y: 4.77
    }
    {
      name: 'Opera'
      y: 0.91
    }
    {
      name: 'Proprietary or Undetectable'
      y: 0.2
    }
  ]

  vote_data.put(data)
  Highcharts.chart 'chart-container',
    chart:
      plotBackgroundColor: null
      plotBorderWidth: null
      plotShadow: false
      type: 'pie'
    title: text: 'title'
    tooltip: pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    plotOptions: pie:
      allowPointSelect: true
      cursor: 'pointer'
      dataLabels:
        enabled: true
        format: '<b>{point.name}</b>: {point.percentage:.1f} %'
        style: color: Highcharts.theme and Highcharts.theme.contrastTextColor or 'black'
    series: [ {
      name: 'Brands'
      colorByPoint: true
      data: [
        {
          name: 'Microsoft Internet Explorer'
          y: 56.33
        }
        {
          name: 'Chrome'
          y: 24.03
          sliced: true
          selected: true
        }
        {
          name: 'Firefox'
          y: 10.38
        }
        {
          name: 'Safari'
          y: 4.77
        }
        {
          name: 'Opera'
          y: 0.91
        }
        {
          name: 'Proprietary or Undetectable'
          y: 0.2
        }
      ]
    } ]
  window.vote_info = vote_info
  window.vote_data = vote_data
