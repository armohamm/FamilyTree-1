<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="height:850px"></div>
	<!-- ECharts单文件引入 -->
	<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
	<script type="text/javascript">
		// 路径配置
		require.config({
			paths : {
				echarts : 'http://echarts.baidu.com/build/dist'
			}
		});

		// 使用
		require([ 'echarts', 'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
		], function(ec) {
			// 基于准备好的dom，初始化echarts图表
			var myChart = ec.init(document.getElementById('main'));
var labelTop = {
    normal : {
        label : {
            show : true,
            position : 'center',
            formatter : '{b}',
            textStyle: {
                baseline : 'bottom'
            }
        },
        labelLine : {
            show : false
        }
    }
};
var labelFromatter = {
    normal : {
        label : {
            formatter : function (params){
                return 100 - params.value + '%'
            },
            textStyle: {
                baseline : 'top'
            }
        }
    },
}
var labelBottom = {
    normal : {
        color: '#ccc',
        label : {
            show : true,
            position : 'center'
        },
        labelLine : {
            show : false
        }
    },
    emphasis: {
        color: 'rgba(0,0,0,0)'
    }
};
var radius = [40, 55];
			var option = {
			  legend: {
        x : 'center',
        y : 'center',
        data:[
            '肥胖','糖尿病','心血管疾病','遗传病','癌症',
            '呼吸系统疾病', '抑郁症', '近视', '残疾', '其他疾病'
        ]
    },
    title : {
        text: '家族疾病史',
        subtext: '根据调查数据统计',
        x: 'center'
    },
    toolbox: {
        show : true,
        feature : {
            dataView : {show: true, readOnly: false},
            magicType : {
                show: true, 
                type: ['pie', 'funnel'],
                option: {
                    funnel: {
                        width: '20%',
                        height: '30%',
                        itemStyle : {
                            normal : {
                                label : {
                                    formatter : function (params){
                                        return 'other\n' + params.value + '%\n'
                                    },
                                    textStyle: {
                                        baseline : 'middle'
                                    }
                                }
                            },
                        } 
                    }
                }
            },
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    series : [
        {
            type : 'pie',
            center : ['10%', '30%'],
            radius : radius,
            x: '0%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:84, itemStyle : labelBottom},
                {name:'肥胖', value:16,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['30%', '30%'],
            radius : radius,
            x:'20%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:91, itemStyle : labelBottom},
                {name:'糖尿病', value:9,itemStyle : labelTop}
            ]
        },
         {
            type : 'pie',
            center : ['90%', '70%'],
            radius : radius,
            y: '55%',   // for funnel
            x:'80%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:89, itemStyle : labelBottom},
                {name:'心血管疾病', value:11,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['50%', '30%'],
            radius : radius,
            x:'40%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:97, itemStyle : labelBottom},
                {name:'遗传病', value:3,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['70%', '30%'],
            radius : radius,
            x:'60%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:89, itemStyle : labelBottom},
                {name:'癌症', value:11,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['90%', '30%'],
            radius : radius,
            x:'80%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:56, itemStyle : labelBottom},
                {name:'呼吸系统疾病', value:44,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['10%', '70%'],
            radius : radius,
            y: '55%',   // for funnel
            x: '0%',    // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:97, itemStyle : labelBottom},
                {name:'抑郁症', value:3,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['30%', '70%'],
            radius : radius,
            y: '55%',   // for funnel
            x:'20%',    // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:49, itemStyle : labelBottom},
                {name:'近视', value:51,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['50%', '70%'],
            radius : radius,
            y: '55%',   // for funnel
            x:'40%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:99, itemStyle : labelBottom},
                {name:'残疾', value:1,itemStyle : labelTop}
            ]
        },
        {
            type : 'pie',
            center : ['70%', '70%'],
            radius : radius,
            y: '55%',   // for funnel
            x:'60%', // for funnel
            itemStyle : labelFromatter,
            data : [
                {name:'other', value:83, itemStyle : labelBottom},
                {name:'其他疾病', value:17,itemStyle : labelTop}
            ]
        }
       
    ]
};
                    


			// 为echarts对象加载数据 
			myChart.setOption(option);
		});
	</script>
</body>
</html>
