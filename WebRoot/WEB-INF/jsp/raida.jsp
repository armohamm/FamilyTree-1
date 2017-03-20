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
		require([ 'echarts', 'echarts/chart/radar' // 使用柱状图就加载bar模块，按需加载
		], function(ec) {
			// 基于准备好的dom，初始化echarts图表
			var myChart = ec.init(document.getElementById('main'));

			var option = {  title : {
        text: '你的家族 vs 本站平均水平（Your Family vs Average）',
        subtext: '虚拟数据'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        orient : 'vertical',
        x : 'right',
        y : 'bottom',
        data:['你的家族（Your Family）','平均水平（Average）']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    polar : [
       {
           indicator : [
               { text: '人均收入水平（Income）', max: 6000},
               { text: '活跃度（Activity）', max: 16000},
               { text: '家庭凝聚力（Family Index）', max: 30000},
               { text: '人均受教育程度（Education）', max: 38000},
               { text: '家庭影响力（Influence）', max: 52000},
               { text: '家庭人数（Numbers）', max: 100}
            ]
        }
    ],
    calculable : true,
    series : [
        {
            name: '你的家族vs平均水平（Your Family  vs Average）',
            type: 'radar',
            data : [
                {
                    value : [4300, 10000, 28000, 35000, 50000, 80],
                    name : '你的家族（Your Family）'
                },
                 {
                    value : [5000, 14000, 28000, 31000, 42000, 70],
                    name : '平均水平（Average）'
                }
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
