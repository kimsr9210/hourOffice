<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/releases/v5.8.2/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"
></script>
<style>
* {
	margin: 0;
	padding: 0;
	list-style: none;
	box-sizing: border-box;
	font-size: 0.875rem;
}

html {
	overflow-y: hidden;
}

a {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: white;
}

a:active {
	text-decoration: none;
}

#wrap {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	min-width: 1200px;
	overflow-y: hidden;
}

#contentsBox {
	width: 100%;
	height: calc(100% - 40px);
	background-color: #F2F2F2;
	overflow: hidden;
}

#contents {
	width: calc(100% - 200px);
	height: 100%;
	float: left;
	overflow-y: auto;
	overflow-x: auto;
}

#contentsDetail {
	min-width: 900px;
	width: 90%;
	max-width: 1200px;
	height: auto;
	min-height: 700px;
	background-color: white;
	border-radius: 5px;
	margin: 30px auto;
	border: 0;
	box-shadow: 0 0 6px #B3B3B3;
}

#TitleName {
	width: calc(100% - 30px);
	height: 50px;
	font-size: 1.5rem;
	margin: 15px;
	float: left;
}

#TitleContents {
	width: calc(100% - 30px);
	height: calc(100% - 110px);
	margin: 15px;
	float: left;
}

/* clearfix */
.clearfix {
	*zoom: 1;
}

.clearfix:before, .clearfix:after {
	display: block;
	content: '';
	line-height: 0;
}

.clearfix:after {
	clear: both;
}

.tblStyle {
	width: 95%;
	margin: 25px auto;
	line-height: 25px;
	border-collapse: collapse;
} /*관리자 관리 관리자목록 표*/
.tblStyle th {
	border-top: 1px solid #dcdcdc;
	border-bottom: 1px solid #dcdcdc;
} /*관리자 관리 관리자목록 표 주제 */
.tblStyle td {
	text-align: center;
} /*관리자 관리 관리자목록 표 내용 가운데 정렬 */
.searchStyle {
	margin-top: 15px;
	padding: 0;
	height: 22px;
	text-align: center;
} /*관리자 관리 모달 검색 스타일*/
.selectStyle {
	text-align: right;
	padding-right: 20px;
}

.optionStyle {
	border: 2px solid #dcdcdc;
	width: 100px;
	padding-left: 3px;
	height: 20px;
	border-radius: 2px;
	display: inline;
	position: relative;
	bottom: 3px;
} /*관리자 select 스타일*/
.searchStyle>input {
	width: 150px;
	height: 20px;
	border: 2px solid #dcdcdc;
	border-radius: 2px;
	display: inline;
	position: relative;
	bottom: 3px;
} /*관리자 관리 모달 검색 스타일 input*/
.searchStyle>button {
	display: inline;
	border: none;
}

.fa-search {
	background-color: #22294A;
	color: white;
	font-size: 20px;
	border: 2px solid #22294A;
	border-radius: 2px;
} /*관리자 관리 모달 검색 스타일 아이콘*/
.buttonSet {
	float: right;
	padding: 0 5px;
} /*관리자 버튼 세트 자리*/
.buttonStyle {
	padding-right: 20px;
}

.agreeButtonType {
	width: 35px;
	border-radius: 3px;
	color: white;
	background-color: #22294A;
	border-color: #22294A;
	font-weight: 800;
	text-align: center;
	box-shadow: 1px 1px 3px #cccccc;
	outline: 0;
} /*관리자 수락 버튼 타입*/
.refuseButtonType {
	width: 35px;
	border-radius: 3px;
	color: white;
	background-color: #FF6363;
	border-color: #FF6363;
	font-weight: 800;
	text-align: center;
	box-shadow: 1px 1px 3px #cccccc;
	outline: 0;
} /*관리자 거절 버튼 타입*/

/* 모달 */
#modal {
	display: none;
	position: fixed;
	left: 67%;
	width: 100%;
	height: 100%;
	z-index: 1;
}

#modal .modal-content {
	width: 250px;
	padding: 20px;
	background: #fff;
	border: 1.5px solid #12776A;
	border-radius: 5px;
	box-shadow: 3px 3px 5px rgba(63, 0, 153, 50%);
}

#modal .modal-layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: -1;
}

#modal .exit-icon {
	text-align: right;
}

#modal .exit-icon>i {
	font-size: 1.5rem;
	cursor: pointer;
}

#modal_close_btn {
	min-width: 28px;
	height: 25px;
	font-size: 1rem;
	font-weight: bold;
	padding: 0 10px;
	color: white;
	background-color: #1D9F8E;
	border-style: none;
	border-radius: 5px;
	box-shadow: 1px 1px 5px #cccccc;
	cursor: pointer;
}

.modal-content {
	text-align: center;
}

.modal-table {
	width: 95%;
	margin: 20px auto;
	text-align: center;
	border-collapse: collapse;
} /*관리자 관리 모달 표*/
.modal-table th {
	border-bottom: 1px solid #dcdcdc;
	padding: 5px;
} /*관리자 관리 모달 표*/
.modal-table td {
	padding: 5px;
} /*관리자 관리 모달 표*/
</style>
</head>
<body>

</body>
</html>