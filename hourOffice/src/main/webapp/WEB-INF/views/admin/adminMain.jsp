<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H:our Office</title>
<%@ include file ="./adminForm/style.jsp" %>
<style>
* {
	margin: 0;
	padding: 0;
	list-style: none;
	box-sizing: border-box;
	font-size: 0.875rem;	
}
.contentsArray {
	width: 85%;
	min-width: 1000px;
	margin: 0 auto;
}
#presentTer {
	width: 60%;
	min-width: 600px;
}

#toDoTer {
	width: 30%;
	min-width: 300px;
}

#statsTer {
	width: 92.5%;
	min-width: 1000px;
}
.content {
	padding: 20px;
	margin: 20px;
	float: left;
	height: auto;
	min-height: 400px;
	background-color: white;
	border-radius: 5px;
	border: 0;
	box-shadow: 0 0 6px #B3B3B3;
}

.terTblStyle {
	width: 90%;
	margin: 0 auto;
	border-collapse: collapse;
	border-radius: 5px;
}

.terTblStyle th {
	padding: 10px;
	background-color: #22294A;
	color: white;
	font-weight: bold;
	font-size: 1rem;
	border: 2px solid #22294A;
}

.terTblStyle td {
	border: 2px solid #dcdcdc;	
}

#donutchart {
	height: 400px;
	margin: 0 auto;
}
.toDoList {
	margin: 0 auto;
	width: 90%;
	border: none;
	font-weight: bold;
	padding-bottom: 8px;
}

.toDoList td {
	padding: 10px;
	border: 1px solid #dcdcdc;
	border-top: none;
	border-left: none;
	border-right: none;
}
.toDoList span {
	background-color: rgba(255, 184, 184, 0.3);
	text-align: left;
}
.toDoList p {
	text-align: right;
}
#columnchart_material {
	width: 100%;
	padding: 20px;
}
.projectTbl {
	width: 50%;
}
</style>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
        
          ['상태', '현황'],
          ['',     	  0],
          ['',        0],
          ['출근', 	 85],
          ['퇴근',    13],
          ['결근',     2],
        ]);

        var options = {
          title: '사원 수 : 100명',
          legend: {position:'bottom'},
          pieHole: 0.3
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
</script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['', '진행중인 프로젝트', '끝낸 프로젝트', '신규 프로젝트'],
          ['10월', 20, 25, 5],
          ['11월', 20, 26, 10],
          ['12월', 15, 15, 20],
          ['1월', 14, 22, 23],
          ['2월', 10, 12, 1]
        ]);

        var options = {
        	legend: {position: 'none'}
		};

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
</head>
<body>
	<div id="wrap">
		<%@ include file="./adminForm/header.jsp"%>

		<div id="contentsBox">
			<%@ include file="./adminForm/sideNaviBar.jsp"%>

			<div id="contents">
				<div class="contentsArray">
					<div id="presentTer" class="content clearfix">
						<table class="terTblStyle">
							<tr>
								<th>오늘의 근태 현황</th>
							</tr>
							<tr>
								<td><div id="donutchart"></div></td>
							</tr>
						</table>
					</div>

					<div id="toDoTer" class="content clearfix">
						<table class="terTblStyle">
							<tr><th>TODOLIST</th></tr>
							<tr><td>
								<table class="toDoList">
									<tr><td>　</td></tr>
									<tr><td><span>삭제 기간 경과 문서</span></td></tr>
									<tr><td><p>10건</p></td></tr>
									<tr><td>　</td></tr>
									<tr><td><span>보존 기간 경과 문서</span></td></tr>
									<tr><td><p>30건</p></td></tr>
									<tr><td>　</td></tr>
									<tr><td><span>문의 사항</span></td></tr>
									<tr><td><p>5건</p></td></tr>
									<tr><td>　</td></tr>
								</table>
							</td></tr>
						</table>
					</div>
				</div>

				<div class="contentsArray">
					<div id="statsTer" class="content clearfix">
						<table class="terTblStyle">
							<tr>
								<th colspan=2;>프로젝트 통계</th>
							</tr>
							<tr>
								<td><div id="columnchart_material" class="projectTbl"></div></td>
								<td class="projectTbl">
									<table class="toDoList">
									<tr><td>　</td></tr>
									<tr><td><span style="background-color: rgba(67, 131, 254, 0.2)">진행중인 프로젝트 갯수</span></td></tr>
									<tr><td><p>10건</p></td></tr>
									<tr><td><span style="background-color: rgba(218, 70, 52, 0.2)">끝낸 프로젝트 갯수</span></td></tr>
									<tr><td><p>30건</p></td></tr>
									<tr><td><span style="background-color: rgba(247, 179, 0, 0.2)">새로 만들어진 프로젝트 갯수</span></td></tr>
									<tr><td><p>5건</p></td></tr>
									<tr><td>　</td></tr>
									</table>								
								</td>
							</tr>
						</table>
					</div>
				</div>

			</div>

		</div>
	</div>

	<script>
		$(document).ready(function() {
			var $teamName = $('#teamName');
			$teamName.removeClass('hoverColor');
		});
	</script>
</body>
</html>