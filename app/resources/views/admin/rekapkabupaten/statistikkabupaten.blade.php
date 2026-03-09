@extends('admin.master')
@section('konten')
<div class="page-breadcrumb">
    <div class="row">
        <div class="col-12 d-flex no-block align-items-center">
            <h4 class="page-title">Statistik Jumlah peserta Kabupaten Tegal, Tahun Ajaran {{$tahunajaran->namatahunajaran}}<br>
        Jenjang:  {{$jenjang->jenjang}}<br>
            
            </h4>

            <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Statistik tingkat Kabupaten  {{$jenjang->jenjang}}</li>
                    </ol>
                </nav>
        </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- End Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Container fluid  -->
<!-- ============================================================== -->
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Start Page Content -->
    <!-- ============================================================== -->
    <div class="row">
        
        <div class="col-12">
            @if(Auth::user()->level=='admin')
            <a target="_blank" href="{{route('cetakrekapkabupaten',[$tahunajaran->id, $jenjang->id])}}" class="btn btn-success"><i class="mdi mdi-printer"></i>laporan</a>
            <a target="_blank" href="{{route('cetaksebaran.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-info"><i class="mdi mdi-printer"></i>sebaran</a>
            <a target="_blank" href="{{route('cetakrekapitulasi.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-warning"><i class="mdi mdi-printer"></i>rekap</a>
            @endif
            <a target="_blank" href="{{route('statistik.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-danger"><i class="mdi mdi-chart-line"></i>statistik</a>
            <a  href="{{route('detail.kabupaten',[$tahunajaran->id,$jenjang->id])}}" class="btn btn-secondary"><i class="mdi  mdi-more"></i>detail</a>
           
            <div class="card">
                <div class="card-body">

                    
                    <div class="table-responsive">
                        <div id="chart"></div><br>
                        <div id="chartkabupaten"></div><br>

                        <div id="chartkecamatan"></div><br>

                        <div id="chartpergender"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
@section('chart')
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
{{-- <script>Highcharts.chart('chart', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Statistik peserta USBN PAI ({{$jenjang->jenjang}}) Kabupaten Tegal per sekolah tahun {{$tahunajaran->namatahunajaran}}'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.jumlah:.1f}</b>'
    },
    accessibility: {
        point: {
            valueSuffix: ''
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.jumlah:.1f} '
            }
        }
    },
    series: [{
        name: 'Jml Peserta',
        colorByPoint: true,
        data: {!! json_encode($skul)!!},
    }]
});</script> --}}
<script>
    Highcharts.chart('chartkabupaten', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Statistik peserta USBN PAI ({{$jenjang->jenjang}}) Kabupaten Tegal per sekolah tahun {{$tahunajaran->namatahunajaran}}'
    },
    // subtitle: {
    //     text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    // },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '9px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Jumlah Peserta   '
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Jumlah Peserta: <b>{point.y:.1f} </b>'
    },
    series: [{
        name: 'Jumlah Peserta',
        data: {!! json_encode($skul)!!},
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});
</script>
<script>
    // Apply the grey theme
Highcharts.setOptions({
	colors: ["#DDDF0D", "#7798BF", "#55BF3B", "#DF5353", "#aaeeee", "#ff0066", "#eeaaee", 
		"#55BF3B", "#DF5353", "#7798BF", "#aaeeee"],
	chart: {
		backgroundColor: {
			linearGradient: [0, 0, 0, 400],
			stops: [
				[0, 'rgb(255,255,255)'],
				[1, 'rgb(255,255,255)']
			]
		},
		borderWidth: 0,
		borderRadius: 15,
		plotBackgroundColor: null,
		plotShadow: false,
		plotBorderWidth: 0
	},
	title: {
		style: { 
			color: 'green',
			font: '16px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
		}
	},
	subtitle: {
		style: { 
			color: '#DDD',
			font: '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
		}
	},
	xAxis: {
		gridLineWidth: 0,
		lineColor: '#999',
		tickColor: '#999',
		labels: {
			style: {
				color: '#999',
				fontWeight: 'bold'
			}
		},
		title: {
			style: {
				color: '#AAA',
				font: 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
			}				
		}
	},
	yAxis: {
		alternateGridColor: null,
		minorTickInterval: null,
		gridLineColor: 'rgba(68, 143, 45, 0.79)',
		lineWidth: 0,
		tickWidth: 0,
		labels: {
			style: {
				color: '#999',
				fontWeight: 'bold'
			}
		},
		title: {
			style: {
				color: '#AAA',
				font: 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
			}				
		}
	},
	legend: {
		itemStyle: {
			color: '#CCC'
		},
		itemHoverStyle: {
			color: '#FFF'
		},
		itemHiddenStyle: {
			color: '#333'
		}
	},
	credits: {
		style: {
			right: '50px'
		}
	},
	labels: {
		style: {
			color: '#CCC'
		}
	},
	tooltip: {
		backgroundColor: {
			linearGradient: [0, 0, 0, 50],
			stops: [
				[0, 'rgba(68, 143, 45, 0.79)'],
				[1, 'rgba(16, 16, 16, .8)']
			]
		},
		borderWidth: 0,
		style: {
			color: '#FFF'
		}
	},
	
	
	plotOptions: {
		line: {
			dataLabels: {
				color: '#CCC'
			},
			marker: {
				lineColor: '#333'
			}
		},
		spline: {
			marker: {
				lineColor: '#333'
			}
		},
		scatter: {
			marker: {
				lineColor: '#333'
			}
		}
	},
	
	toolbar: {
		itemStyle: {
			color: '#CCC'
		}
	}
});
    Highcharts.chart('chartkecamatan', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Statistik peserta USBN PAI ({{$jenjang->jenjang}}) Kabupaten Tegal per Kecamatan tahun {{$tahunajaran->namatahunajaran}}'
    },
    // subtitle: {
    //     text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    // },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '9px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Jumlah Peserta   '
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Jumlah Peserta: <b>{point.y:.1f} </b>'
    },
    series: [{
        name: 'Jumlah Peserta',
        data: {!! json_encode($kc)!!},
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});
</script>
<script>
    Highcharts.setOptions({
	colors: [ "#322d8f", "#55BF3B", "#DF5353", "#aaeeee", "#ff0066", "#eeaaee", 
		"#55BF3B", "#DF5353", "#7798BF", "#aaeeee"],
	chart: {
		backgroundColor: {
			linearGradient: [0, 0, 0, 400],
			stops: [
				[0, 'rgb(255,255,255)'],
				[1, 'rgb(255,255,255)']
			]
		},
		borderWidth: 0,
		borderRadius: 15,
		plotBackgroundColor: null,
		plotShadow: false,
		plotBorderWidth: 0
	},
	title: {
		style: { 
			color: '#322d8f',
			font: '16px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
		}
	},
	subtitle: {
		style: { 
			color: '#DDD',
			font: '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
		}
	},
	xAxis: {
		gridLineWidth: 0,
		lineColor: '#999',
		tickColor: '#999',
		labels: {
			style: {
				color: '#999',
				fontWeight: 'bold'
			}
		},
		title: {
			style: {
				color: '#AAA',
				font: 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
			}				
		}
	},
	yAxis: {
		alternateGridColor: null,
		minorTickInterval: null,
		gridLineColor: 'rgba(68, 143, 45, 0.79)',
		lineWidth: 0,
		tickWidth: 0,
		labels: {
			style: {
				color: '#999',
				fontWeight: 'bold'
			}
		},
		title: {
			style: {
				color: '#AAA',
				font: 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
			}				
		}
	},
	legend: {
		itemStyle: {
			color: '#CCC'
		},
		itemHoverStyle: {
			color: '#FFF'
		},
		itemHiddenStyle: {
			color: '#333'
		}
	},
	credits: {
		style: {
			right: '50px'
		}
	},
	labels: {
		style: {
			color: '#CCC'
		}
	},
	tooltip: {
		backgroundColor: {
			linearGradient: [0, 0, 0, 50],
			stops: [
				[0, 'rgba(50, 45, 143, 0.79)'],
				[1, 'rgba(16, 16, 16, .8)']
			]
		},
		borderWidth: 0,
		style: {
			color: '#FFF'
		}
	},
	
	
	plotOptions: {
		line: {
			dataLabels: {
				color: '#CCC'
			},
			marker: {
				lineColor: '#333'
			}
		},
		spline: {
			marker: {
				lineColor: '#333'
			}
		},
		scatter: {
			marker: {
				lineColor: '#333'
			}
		}
	},
	
	toolbar: {
		itemStyle: {
			color: '#CCC'
		}
	}
});
    Highcharts.chart('chartpergender', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Statistik peserta USBN PAI ({{$jenjang->jenjang}}) Kabupaten Tegal berdasar Gender tahun {{$tahunajaran->namatahunajaran}}'
    },
    // subtitle: {
    //     text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    // },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '9px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Jumlah Peserta   '
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Jumlah Peserta: <b>{point.y:.1f} </b>'
    },
    series: [{
        name: 'Jumlah Peserta',
        data: {!! json_encode($jk)!!},
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});
</script>

@endsection