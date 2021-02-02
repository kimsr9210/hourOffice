<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H:our Office</title>
<%@ include file ="../adminForm/style.jsp" %>
<style>
	/*#TitleContents div{
		border: 1px solid #FFD8D8;
	}*/
	
	.float{float:left;}
	#TitleContents *:focus{
		outline: 0;
	}
	#TitleContents a{
		color: black;
	}
	/* 모든 input */
	#TitleContents input{
		height: 100%;
		border: 1px solid lightgray;
		padding: 0 5px;
		margin-right: 10px;
	}
	/* 모든 button */
	#TitleContents button{
		height: 100%;
		cursor: pointer;
	}
	
    /* 초기화 영역 */
	#init-div{
		height: 30px;
		padding-left: 5%;
	}
	#init-div > #selectMember{height: 100%; display:none;}
    #init-div > #selectMember > table{
    /* 검색 된 정보 */
    	width: 50%; height: 100%;
    	text-align: center;
    	margin-left: 20px;
    	background-color: rgba(255, 184, 184, 0.4);
    }
    #init-div > #selectMember > table tr{
    	
    }
    #init-div > #selectMember > table td{
    	width: 80px;
    	padding: 0 5px;
    }
    #init-div > #selectMember > table td:nth-child(2n){
    	background-color: white;
    }
    #init-div > #selectMember > #init-btn{
    /* 초기화 버튼 */
    	width: 110px;
    }
    
    
    /* 로그 영역 */
	#log-div{
		width: 90%;
		margin: 0 auto;
		margin-top: 50px;
	}
	#log-div > div:first-child{
		height: 30px;
		text-align: right;
		margin-bottom: 10px;
	}
	#log-div > div:first-child input{
		position: relative;
		bottom: 4px;
	}
	#log-div > div:first-child > *{
		height: 100%;
		margin-right: 10px;
	}
	/* 로그 테이블 */
	#log-div table{
		width: 100%; height: 300px;
	}
	#log-div table tr{
		height: 57px;
	}
	#log-div table td{
		padding: 0 5px;
		text-align: center;
	}
	#log-div table td:first-child{
		width: 150px;
	}
	#log-div table td:last-child > div{
		width: 100px; height: 30px;
		margin: 0 auto;
		padding-top: 7px;
		border-radius: 5px;
	}
	#log-div > div#pageNabi{
		margin-top: 10px;
		text-align: center;
	}
	
	/* 로그 성공 & 실패 */
	.successLog{
		color: white;
		text-shadow: 0 0 1px white;
		background-color: rgba(29, 159, 142, 0.4);
	}
	.failLog{
		color: white;
		text-shadow: 0 0 1px white;
		background-color: rgba(67, 116, 217, 0.4); 
	}
</style>
<script>
	$(function(){
		// 초기화 / 사번
		var memNo = "";
		// 초기화할 member 검색 버튼 클릭 이벤트
		$('#init-search-btn').click(function(){
			memNo = $(this).prev().val();
			if(memNo!=''){
				alert(memNo);
				// $.ajax();
				$(this).next().show();
			}else{
				alert('검색할 사번을 입력해주세요');
			}
		});
		
		// 초기화 버튼 클릭 이벤트
		$('#init-btn').click(function(){
			
			if(confirm('해당 사원의 비밀번호를 초기화하기겠습니까?')){
				alert(memNo);
				// $.ajax();
			}
		});
		
	})
</script>
</head>
<body>
	<div id="wrap">
		<%@ include file ="../adminForm/header.jsp" %>
		
		<div id="contentsBox">
			<%@ include file ="../adminForm/sideNaviBar.jsp" %>
			
			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
						오류 관리 <span>비밀번호 초기화</span>
    				</div>
    				<div id="TitleContents">
                        <!--여기서 각자 id 만드시면 됩니다-->
                        
                        
                        
                        
                        <div id="init-div">
                            <input type="text" class="float" placeholder="사번을 입력하세요"/> <button type="button" id="init-search-btn" class="agreeButtonType float"><i class="fas fa-search"></i></button>
                            <div id="selectMember">
	                            <table class="float">
	                                <tr>
	                                    <td>210130001</td>
	                                    <td>주다빈</td>
	                                    <td>사원</td>
	                                    <td>인사팀</td>
	                                </tr>
	                            </table>
	                            <button  type="button" id="init-btn" class="agreeButtonType float">비밀번호 초기화</button>
                            </div>
                        </div>
                        
                        <div id="log-div">
                            <div><form action="#" method="get"><input type="text" name="searchKeyword"/> <button class="agreeButtonType"><i class="fas fa-search"></i></button></from></div>
                            <hr>
                            <table>
                                <tr>
                                    <td>2021/01/30(토) 22:16</td>
                                    <td>주다빈 tazadab@gmail.com</td>
                                    <td>부서명</td>
                                    <td>000.000.00.000</td>
                                    <td><div class="successLog">로그인 성공</div></td>
                                </tr>
                                <tr>
                                    <td>2021/01/30(토) 22:16</td>
                                    <td>장효진 tazadab@gmail.com</td>
                                    <td>부서명</td>
                                    <td>000.000.00.000</td>
                                    <td><div class="failLog">로그인 실패</div></td>
                                </tr>
                                <tr>
                                    <td>2021/01/30(토) 22:16</td>
                                    <td>장효진 tazadab@gmail.com</td>
                                    <td>부서명</td>
                                    <td>000.000.00.000</td>
                                    <td>로그인 실패</td>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                </tr>
                            </table>
                            <hr>
                            <div id="pageNabi">1 2 3 4 5 ></div>
                        </div>
                        
                        
                        
                        
                        
                        <!----------------------------------->
    				</div>
				</div>
			</div> 
		</div>
	</div>
	
	<script>
       
	   $(document).ready(function(){
	      var $errorList = $('#errorList');         
	      var $error = $('#error');
	      
	      /* 오류 관리일 때*/
          $errorList.css('height','72px');
          $error.children().eq(2).children().attr('class','iArrow fas fa-angle-left');
	      
	      $error.removeClass('hoverColor').addClass('click');
	      $errorList.removeClass('accordion');
	      $errorList.addClass('click');
	      $errorList.children().eq(0).children(":first").removeClass('hoverColor');   
	      
	   });
	</script>
</body>
</html>