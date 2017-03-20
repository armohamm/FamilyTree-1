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
	<div id="main" style="height:800px"></div>
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
		require([ 'echarts', 'echarts/chart/map' // 使用柱状图就加载bar模块，按需加载
		], function(ec) {
			// 基于准备好的dom，初始化echarts图表
			var myChart = ec.init(document.getElementById('main'));

			var option = {
				title : {
					text : '家族分布图',
					subtext : '查看你的家族在中国的分布情况',
					x : 'center'
				},
				tooltip : {
					trigger : 'item'
				},
				legend : {
					orient : 'vertical',
					x : 'left',
					data : [ '家族成员' ]
				},
				dataRange : {
					min : 0,
					max : 10,
					x : 'left',
					y : 'bottom',
					text : [ '高', '低' ], // 文本，默认为数值文本
					calculable : true
				},
				toolbox : {
					show : true,
					orient : 'vertical',
					x : 'right',
					y : 'center',
					feature : {
						mark : {
							show : true
						},
						dataView : {
							show : true,
							readOnly : false
						},
						restore : {
							show : true
						},
						saveAsImage : {
							show : true
						}
					}
				},
				roamController : {
					show : true,
					x : 'right',
					mapTypeControl : {
						'china' : true
					}
				},
				series : [ {
					name : '家族成员',
					type : 'map',
					mapType : 'china',
					roam : false,
					itemStyle : {
						normal : {
							label : {
								show : true
							}
						},
						emphasis : {
							label : {
								show : true
							}
						}
					},
					data : [ {
						name : '北京',
						value : Math.round(${uu[0]})
					}, {
						name : '天津',
						value : Math.round(${uu[1]})
					}, {
						name : '上海',
						value : Math.round(${uu[2]})
					}, {
						name : '重庆',
						value : Math.round(${uu[3]})
					}, {
						name : '河北',
						value : Math.round(${uu[4]})
					}, {
						name : '河南',
						value : Math.round(${uu[5]})
					}, {
						name : '云南',
						value : Math.round(${uu[6]})
					}, {
						name : '辽宁',
						value : Math.round(${uu[7]})
					}, {
						name : '黑龙江',
						value : Math.round(${uu[8]})
					}, {
						name : '湖南',
						value : Math.round(${uu[9]})
					}, {
						name : '安徽',
						value : Math.round(${uu[10]})
					}, {
						name : '山东',
						value : Math.round(${uu[11]})
					}, {
						name : '新疆',
						value : Math.round(${uu[12]})
					}, {
						name : '江苏',
						value : Math.round(${uu[13]})
					}, {
						name : '浙江',
						value : Math.round(${uu[14]})
					}, {
						name : '江西',
						value : Math.round(${uu[15]})
					}, {
						name : '湖北',
						value : Math.round(${uu[16]})
					}, {
						name : '广西',
						value : Math.round(${uu[17]})
					}, {
						name : '甘肃',
						value : Math.round(${uu[18]})
					}, {
						name : '山西',
						value : Math.round(${uu[19]})
					}, {
						name : '内蒙古',
						value : Math.round(${uu[20]})
					}, {
						name : '陕西',
						value : Math.round(${uu[21]})
					}, {
						name : '吉林',
						value : Math.round(${uu[22]})
					}, {
						name : '福建',
						value : Math.round(${uu[23]})
					}, {
						name : '贵州',
						value : Math.round(${uu[24]})
					}, {
						name : '广东',
						value : Math.round(${uu[25]})
					}, {
						name : '青海',
						value : Math.round(${uu[26]})
					}, {
						name : '西藏',
						value : Math.round(${uu[27]})
					}, {
						name : '四川',
						value : Math.round(${uu[28]})
					}, {
						name : '宁夏',
						value : Math.round(${uu[29]})
					}, {
						name : '海南',
						value : Math.round(${uu[30]})
					}, {
						name : '台湾',
						value : Math.round(${uu[31]})
					}, {
						name : '香港',
						value : Math.round(${uu[32]})
					}, {
						name : '澳门',
						value : Math.round(${uu[33]})
					} ]
				}]
			};

			// 为echarts对象加载数据 
			myChart.setOption(option);
		});
	</script>
</body>
</html>
