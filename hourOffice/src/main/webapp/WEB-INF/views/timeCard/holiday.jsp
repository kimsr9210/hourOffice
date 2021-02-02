<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
    <style>
/* -------------- 공용 레이아웃 (수정X)-------------- */
* {
    margin: 0;
    padding: 0;
    list-style: none;
    box-sizing: border-box;
    font-size: 0.875rem;
}
html{overflow-y: hidden;}
a{ text-decoration: none;}
a:visited{text-decoration: none; color: black;}
a:active{ text-decoration: none;}
#wrap {
    position: absolute;
    top: 0;
    bottom:0;
    left: 0;
    right: 0;
    min-width: 1200px;
    overflow-y: hidden;
}

#header {
    width: 100%;
    height: 50px;
    border: 0;
    background-color: #1D9F8E;
}

#contentsBox {
    width: 100%;
    height: calc(100% - 40px);
    background-color: #F2F2F2;
    overflow: hidden;
}

#sideNavi {
    width: 200px;
    height: 100%;
    float: left;
    overflow-y: auto;
    background-color: #1D9F8E;
}

#contents {
    width: calc(100% - 200px);
    height: 100%;
    float: left;
    overflow-y: auto;
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
.clearfix {*zoom:1;}
.clearfix:before, .clearfix:after {display:block; content: ''; line-height: 0;}
.clearfix:after {clear: both;}
       

/* -------------- 공용 레이아웃 (수정X)-------------- */
        
              
#aform{
color: white;
background: #1D9F8E;
font-size: 1.2em;
padding: 0.3em 0.5em;
margin-right: 0.1em;
border-radius: 5px;
float: right;
}
        
        
        
    </style>
<body>
    <div id="wrap">
        
        <div id="header">
            헤더 include
        </div>
        
        <div id="contentsBox">
            <div id="sideNavi">
                사이드 메뉴 include
            </div>
            <div id="contents">
              <div id="contentsDetail" class="clearfix">
                    
                    
                    
                    <div id="TitleName">
                        <!--여기서 각자 id 만드시면 됩니다-->
                        연차내역
                        <!----------------------------------->
                    </div>
                    <div id="TitleContents">
                        <!--여기서 각자 id 만드시면 됩니다-->
                        
            
        <a id="aform" href="">연차작성</a>      
        

                        
                        <!----------------------------------->
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    
    
    
 </body></html>