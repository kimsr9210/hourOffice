$(function() {
	/* textarea 키를 누를 때 마다 자동 높이 조절*/
	function adjustHeight() {
		var textEle = $('textarea');
		textEle[0].style.height = 'auto';
		var textEleHeight = textEle.prop('scrollHeight');
		textEle.css('height', textEleHeight);
	}
	;

	/* TextArea 자동 높이 조절 CDN */
	autosize($('textarea'));

	/* 프로젝트 옵션 선택 시 박스 나타내기 */
	$('#projectSetting').click(function() {
		console.log(this);
		if ($('#projectOption').css('display') == 'block') {
			$('#projectOption').css('display', 'none');
		} else {
			$('#projectOption').css('display', 'block');
		}
	})
	/*
	$('#projectOption').parents().click(function(){
	    if($('#projectOption').css('display')=='block'){
	        $('#projectOption').css('display','none');
	    }
	})
	 */

	/* 프로젝트 수정 박스 나타내기 */
	$('#projectModify').click(function() {
		$('#newProjectBox').css('visibility', 'visible');
		$('#newProjectBox').css('display', 'block');
		$('#projectOption').css('display', 'none');
		$('#wrap').css('opacity', '0.5');
		$('#wrap').css('pointer-events', 'none');
	});

	$('#newProjectExit').click(function() {
		$('#newProjectBox').css('visibility', 'hidden');
		$('#newProjectBox').css('display', 'none');
		$('#wrap').css('opacity', '1');
		$('#wrap').css('pointer-events', 'all');
		$('#projectForm')[0].reset();
	})

	/* 멤버 초대하기 */
	$('#inviteBtn').click(function() {
		$('#inviteBox').css('display', 'block');
		$('#wrap').css('opacity', '0.5');
		$('#wrap').css('pointer-events', 'none');
	});

	/* 멤버 추가 박스에서 뒤로가기 누를 시 */
	$('#inviteExit').click(function() {
		$('#inviteBox').css('display', 'none');
		$('#wrap').css('opacity', '1');
		$('#wrap').css('pointer-events', 'all');
	});

	/* 멤버 +추가 누를 시 */
	$('.memberAddBox').click(function() {
		if ($('.memberAddBox').text() == '초대완료') {
			$('.memberAddBox').html('+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가');
			$('.memberAddBox').css('background-color', 'white');
			$('.memberAddBox').css('border-color', '#808080');
			$('.memberAddBox').css('color', '#808080');
		} else {
			$('.memberAddBox').css('background-color', '#1D9F8E');
			$('.memberAddBox').css('color', 'white');
			$('.memberAddBox').css('border-color', '#1D9F8E');
			$('.memberAddBox').text('초대완료');
		}
	});

	/* 멤버 전체보기 누를 경우 */
	$('#memberAllList, #memberAllListNavi').click(function() {
		$('#memberAllListBox').css('visibility', 'visible');
		$('#memberAllListBox').css('display', 'block');
		$('#wrap').css('opacity', '0.5');
		$('#wrap').css('pointer-events', 'none');
	});

	$('#memberAllListExit').click(function() {
		$('#memberAllListBox').css('visibility', 'hidden');
		$('#memberAllListBox').css('display', 'none');
		$('#wrap').css('opacity', '1');
		$('#wrap').css('pointer-events', 'all');
		$('#memberAllListSearchForm')[0].reset();
	})

	/* 글/댓글 작성 권한 설정 누를 경우 */
	$('#mgrComment').click(function() {
		$('#boardCommentSet').css('visibility', 'visible');
		$('#boardCommentSet').css('display', 'block');
		$('#projectOption').css('display', 'none');
		$('#wrap').css('opacity', '0.5');
		$('#wrap').css('pointer-events', 'none');
	});

	$('#boardCommentExit').click(function() {
		$('#boardCommentSet').css('visibility', 'hidden');
		$('#boardCommentSet').css('display', 'none');
		$('#wrap').css('opacity', '1');
		$('#wrap').css('pointer-events', 'all');
	})

	/* 파일 다운로드 권한 설정 누를 경우 */
	$('#mgrFile').click(function() {
		$('#fileSet').css('visibility', 'visible');
		$('#fileSet').css('display', 'block');
		$('#projectOption').css('display', 'none');
		$('#wrap').css('opacity', '0.5');
		$('#wrap').css('pointer-events', 'none');
	});

	$('#fileExit').click(function() {
		$('#fileSet').css('visibility', 'hidden');
		$('#fileSet').css('display', 'none');
		$('#wrap').css('opacity', '1');
		$('#wrap').css('pointer-events', 'all');
	})

	/* 프로젝트 참가자에서 관리자가 설정 누를 시*/
	$('.memberAllListSetAdmin').click(function() {
		if ($(this).children().eq(1).css('display') == 'none') {
			$(this).children().eq(1).css('display', 'block');
		} else {
			$(this).children().eq(1).css('display', 'none');
		}
	});

	$('.displayNone').click(function() {
		if ($('.memberAdminBox').css('display') == 'block') {
			$('.memberAdminBox').css('display', 'none');
		}
	});

	/* 게시물 설정 누를 시 */
	$('.boardSet').click(function() {
		if ($(this).next().css('display') == 'none') {
			$(this).next().css('display', 'block');
		} else {
			$(this).next().css('display', 'none');
		}
	});

	$('#newBoard').click(function(){
		location.replace('/projectBoardWrite.ho');
	});
	
	//이전 화면 누르기
	$('#backward').click(function(){
		location.replace('/projectAllList.ho');
	});
	
	// 댓글 수정 
	$('.commentModifyBtn').click(function(){
			var $textBox = $(this).parent().next().children().eq(0);
			var $form = $(this).parent().next();
		if($(this).text()=='수정'){
			$(this).text('완료');
			$(this).next().text('취소');
	        $textBox.removeAttr('disabled');
	        $textBox.removeAttr('readonly');
	        $textBox.css('border','1px solid black');
		}else{
			var result = window.confirm("해당 댓글을 수정하시겠습니까?");
			if(result){
				$form.submit();
			}
		}
	});
	
	// 댓글 삭제
	$('.commentDeleteBtn').click(function(){
		if($(this).text()=='삭제'){
			var result = window.confirm("해당 댓글을 삭제하시겠습니까?");
			var $commentBox = $(this).parent().parent().parent();
			if(result){
				var $commentNo = $(this).next().val();
				var $proNo = $(this).next().next().val();
				$.ajax({
	            	url : "/deleteProjectComment.ho",
	            	data : {"commentNo" : $commentNo},
	            	type : "get",
	            	success : function(result){
	            		if(result=="true"){
	            			console.log("댓글이 삭제되었습니다");
	            		}else{
	            			console.log("프로젝트 즐겨찾기 실패");
	            		}
	            	},
	            	error : function(){
	            		console.log("프로젝트 즐겨찾기 ajax 통신 실패");
	            	}
	            });
				$(this).parent().parent().parent().remove();
			}
		}else{
			var result = window.confirm("해당 댓글 수정을 취소하시겠습니까?");
			if(result){
				location.reload();
			}
		}
		
	});
	
	$('#projectFavor').click(function(){
        var proNo = $(this).next().val();
        var memNo = $(this).next().next().val();
        var proSubject = $(this).next().next().next().val();
        
        if($(this).children().css('color')=='rgb(255, 255, 255)'){
            $.ajax({
            	url : "/insertProjectFavor.ho",
            	data : {"proNo" : proNo, "memNo" : memNo},
            	type : "get",
            	success : function(result){
            		if(result=="true"){
            			alert("["+proSubject+"] 가 즐겨 찾기에 등록되었습니다");
            		}else{
            			alert("프로젝트 즐겨찾기 실패");
            		}
            	},
            	error : function(){
            		console.log("프로젝트 즐겨찾기 ajax 통신 실패");
            	}
            });
            $(this).children().attr('class','fas fa-star likeBtn');
        }else{
        	$.ajax({
            	url : "/deleteProjectFavor.ho",
            	data : {"proNo" : proNo, "memNo" : memNo},
            	type : "get",
            	success : function(result){
            		if(result=="true"){
            			alert("["+proSubject+"] 가 즐겨 찾기에 삭제되었습니다");
            		}else{
            			alert("프로젝트 즐겨찾기 실패");
            		}
            	},
            	error : function(){
            		console.log("프로젝트 즐겨찾기 ajax 통신 실패");
            	}
            });
            $(this).children().attr('class','far fa-star');
        }
    });
	
	
	$('#newProjectSubmitBtn').click(function() {
		if ($('input:checkbox[id="public_check"]').is(':checked')) {
			$('#public_check_hidden').attr('disabled', 'disabled');
		}
		return true;
	});
	
	//게시물 수정 버튼 누를 시
	$('.boardModify').click(function(){
		var $textBox = $(this).parents('.boardInfo').next().children().children().eq(0);
		var $modify = $(this).parents('.boardInfo').next().children().children('.textHide');
        $textBox.removeAttr('disabled');
        $textBox.removeAttr('readonly');
        $textBox.css('border','1px solid black');
        $modify.css('display','block');
        $('.boardModifyBox').css('display','none');
	});
	
	//게시물 수정 완료 누를 시
	$('.boardModifyBtn').click(function(){
		var $formBox = $(this).parent();
        $('.boardModifyBox').css('display','none');
		var result = window.confirm("정말로 게시물을 수정하시겠습니까?");
		if(result){
			$formBox.submit();
		}
	});
	
	//게시물 수정 취소 버튼 누를 시
	$('.modifyCancelBtn').click(function(){
        $('.boardModifyBox').css('display','none');
		var result = window.confirm("게시물 수정을 취소하시겠습니까?");
		if(result){
			location.reload();
		}
	});
	
	//게시물 삭제
	$('.boardDelete').click(function(){
        $('.boardModifyBox').css('display','none');
		var result = window.confirm("해당 게시물을 삭제하시겠습니까?");
		var boardNo = $(this).next().val();
		if(result){
			$.ajax({
            	url : "/deleteProjectBoard.ho",
            	data : {"boardNo" : boardNo},
            	type : "post",
            	success : function(result){
            		if(result=="true"){
            			alert("해당 게시물이 삭제되었습니다");
            		}else{
            			alert("게시물 삭제에 실패하였습니다 \n지속적인 오류시 관리자에게 문의하세요");
            		}
            	},
            	error : function(){
            		console.log("게시물 삭제 ajax 통신 실패");
            	}
            });
			
			location.reload();
		}
	});
	
	//프로젝트 나가기
	$('#projectExit, .outProject').click(function(){
		var proNo = '<%=p.getProNo()%>';
		var proMemNo = '<%=p.getMemNo()%>';
		var memNo = '<%=m.getMemNo()%>'
		var result = window.confirm("해당 프로젝트에서 나가시겠습니까?");
		if(result){
			if(proMemNo==memNo){
				alert('프로젝트 생성자는 프로젝트를 나갈 수 없습니다');
			}else{
				$.ajax({
	            	url : "/updateProjectMemberExit.ho",
	            	data : {"proNo" : proNo, "memNo" : memNo},
	            	type : "post",
	            	success : function(result){
	            		if(result=="true"){
	            			alert("해당 프로젝트에서 나갔습니다.");
	            		}else{
	            			alert("해당 프로젝트 나가기에 실패하였습니다 \n지속적인 오류시 관리자에게 문의하세요");
	            		}
	            	},
	            	error : function(){
	            		console.log("프로젝트 나가기 ajax 통신 실패");
	            	}
	            });
				
			}
			location.replace('/projectAllList.ho');
		}
	});
	
	//프로젝트 삭제
	$('#projectDelete').click(function(){
		var proNo = '<%=p.getProNo()%>';
		var proMemNo = '<%=p.getMemNo()%>';
		var memNo = '<%=m.getMemNo()%>';
		var proSubject = '<%=p.getProSubject()%>'
		var result = window.confirm("해당 프로젝트를 삭제하시겠습니까?");
		if(result){
			if(!(proMemNo==memNo)){
				alert('프로젝트 생성자만 삭제할 수 있습니다.');
			}else{
				$.ajax({
	            	url : "/deleteProject.ho",
	            	data : {"proNo" : proNo},
	            	type : "post",
	            	success : function(result){
	            		if(result=="true"){
	            			alert("해당 프로젝트가 삭제되었습니다.")
	            		}else{
	            			alert("해당 프로젝트 삭제에 실패하였습니다 \n지속적인 오류시 관리자에게 문의하세요");
	            		}
	            	},
	            	error : function(){
	            		console.log("프로젝트 삭제 ajax 통신 실패");
	            	}
	            });
				location.replace('/projectAllList.ho');
			}
		}
	});
	
	//프로젝트 내보내기
	$('.outProjectMember').click(function(){
		var memNo = $(this).next().val();
		var memName = $(this).next().next().val();
		var proMemNo = '<%=p.getMemNo()%>';
		var proNo = '<%=p.getProNo()%>';
		var result = window.confirm("["+memName+"] 님을 해당 프로젝트에서 내보내시겠습니까?");
		if(memNo==proMemNo){
			alert('프로젝트 생성자는 내보낼 수 없습니다');
		}else{
			if(result){
				$.ajax({
		            url : "/updateProjectMemberExit.ho",
		            data : {"proNo" : proNo, "memNo" : memNo},
		            type : "post",
		            success : function(result){
		            	if(result=="true"){
		            		alert("["+memName+"] 님을 해당 프로젝트에서 내보냈습니다");
		            	}else{
		            		alert("참가자 내보내기에 실패하였습니다 \n지속적인 오류시 관리자에게 문의하세요");
		            	}
		            },
		            error : function(){
		            	console.log("참가자 내보내기 ajax 통신 실패");
		            }
		        });
			}
    		location.reload();
		}
	});
	
	//관리자 지정
	$('.adminSet').click(function(){
		var memNo = $(this).next().val();
		var memName = $(this).next().next().val();
		var proMemNo = '<%=p.getMemNo()%>';
		var proNo = '<%=p.getProNo()%>';
		var result = window.confirm("["+memName+"] 님을 관리자로 설정하시겠습니까?");
		if(result){
			$.ajax({
		           url : "/updateProjectMgrSet.ho",
		           data : {"proNo" : proNo, "memNo" : memNo},
		           type : "post",
		           success : function(result){
		           	if(result=="true"){
		           		alert("["+memName+"] 님을 관리자로 설정하였습니다");
		           	}else{
		           		alert("관리자 권한 지정에 실패하였습니다 \n지속적인 오류시 관리자에게 문의하세요");
		           	}
		           },
		           error : function(){
		           	console.log("관리자 지정 ajax 통신 실패");
		           }
		       });
		}
    	location.reload();
	});
	
	//관리자 지정 해제
	$('.adminCancel').click(function(){
		var memNo = $(this).next().val();
		var memName = $(this).next().next().val();
		var proMemNo = '<%=p.getMemNo()%>';
		var proNo = '<%=p.getProNo()%>';
		var result = window.confirm("["+memName+"] 님의 관리자 권한을 해제하시겠습니까?");
		if(memNo==proMemNo){
			alert('프로젝트 생성자는 관리자 권한을 해제할 수 없습니다');
		}else{
			if(result){
				$.ajax({
		            url : "/updateProjectMgrCancel.ho",
		            data : {"proNo" : proNo, "memNo" : memNo},
		            type : "post",
		            success : function(result){
		            	if(result=="true"){
		            		alert("["+memName+"] 님의 관리자 권한을 해제하였습니다");
		            	}else{
		            		alert("관리자 권한 해제에 실패하였습니다 \n지속적인 오류시 관리자에게 문의하세요");
		            	}
		            },
		            error : function(){
		            	console.log("관리자 지정 해제 ajax 통신 실패");
		            }
		        });
			}
    		location.reload();
		}
	});
	
	//네비 색깔
	$('#workNavi').click(function(){
		$('#workListForm').submit();
	});
	$('#postNavi').click(function(){
		$('#postListForm').submit();
	});
	$('#codeNavi').click(function(){
		$('#codeListForm').submit();
	});
	$('#planNavi').click(function(){
		$('#planListForm').submit();
	});
	$('#fileNavi').click(function(){
		$('#fileListForm').submit();
	});
	
	//프로젝트 완료처리
	$('#projectComplate').click(function(){
		var compYN = "<%=p.getCompYN()%>";
		var proNo = "<%=p.getProNo()%>";
		console.log(compYN);
		if(compYN=='Y'){
			var result = window.confirm("현재 프로젝트는 완료되어있습니다\n미완료 처리 하시겠습니까?");
			if(result){
				$.ajax({
		            url : "/updateProjectComplate.ho",
		            data : {"proNo" : proNo, "compYN" : compYN},
		            type : "post",
		            success : function(result){
		            	if(result=="true"){
		            		alert("현재 프로젝트는 미완료 처리 되었습니다");
		            	}else{
		            		alert("현재 프로젝트의 완료처리가 실패하였습니다\n지속적인 오류시 관리자에게 문의하세요");
		            	}
		            },
		            error : function(){
		            	console.log("프로젝트 완료처리 ajax 통신 실패");
		            }
		        });
				
				location.reload();
			}
		}else{
			var result = window.confirm("현재 프로젝트를 완료처리 하시겠습니까?");
			if(result){
				$.ajax({
		            url : "/updateProjectComplate.ho",
		            data : {"proNo" : proNo, "compYN" : compYN},
		            type : "post",
		            success : function(result){
		            	if(result=="true"){
		            		alert("현재 프로젝트는 완료처리 되었습니다");
		            	}else{
		            		alert("현재 프로젝트의 완료처리에 실패하였습니다\n지속적인 오류시 관리자에게 문의하세요");
		            	}
		            },
		            error : function(){
		            	console.log("프로젝트 완료처리 ajax 통신 실패");
		            }
		        });
				location.reload();
			}
		}
	});
});