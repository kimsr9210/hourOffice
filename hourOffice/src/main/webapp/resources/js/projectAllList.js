/**
 * 
 */
$(function() {

	$('#categoryProject').next().css('display', 'block');
	$('#categoryProject').next().css('height', '125px');
	$('#categoryProject').children().last().children().attr('class',
			'fas fa-chevron-left');

	$('#categoryProject').next().children().eq(1).children().css('font-weight',
			'800');
	$('#categoryProject').next().children().eq(1).children().css('color',
			'#ffcc29');

	/* 페이지 새로고침 */
	$('#logoImg').click(function() {
		location.reload();
	});

	$('#newProjectSubmitBtn').click(function() {
		console.log($('input:checkbox[id="public_check"]').is(':checked'));
		if ($('input:checkbox[id="public_check"]').is(':checked')) {
			$('#public_check_hidden').attr('disabled', 'disabled');
		}
		return true;
	});
	/* 말풍선 */
	$('#searchBtn').hover(function() {
		$('#searchTooltip').css('visibility', 'visible');
	}, function() {
		$('#searchTooltip').css('visibility', 'hidden');
	});

	$('#userLogout').hover(function() {
		$('#exitTooltip').css('visibility', 'visible');
	}, function() {
		$('#exitTooltip').css('visibility', 'hidden');
	});

	/* 새 프로젝트 만들기 버튼 누를 시 */

	$('#newProjectBtn').click(function() {
		$('#newProjectBox').css('visibility', 'visible');
		$('#newProjectBox').css('display', 'block');
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

	/* 프로젝트 생성 시 멤버 추가 박스 나타내기 */
	$('#projectInviteMember').click(function() {
		$('#inviteBox').css('display', 'block');
		$('#newProjectBox').css('display', 'none');
	});

	/* 멤버 추가 박스에서 뒤로가기 누를 시 */
	$('#inviteExit').click(function() {
		$('#inviteBox').css('display', 'none');
		$('#newProjectBox').css('display', 'block');
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

	//프로젝트 클릭 시
	$('.projectSubject').click(function(){
		$(this).next().submit();
	});
});