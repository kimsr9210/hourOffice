/*달력*/
// Date 객체 생성
let date = new Date();

function bulidCalendar(){
    var viewYear = date.getFullYear();
    var viewMonth = date.getMonth();

    // year-month 채우기
    $('.year-month').text(`${viewYear}. ${viewMonth + 1}`);

    // 지난 달 마지막 Date, 이번 달 마지막 Date
    var prevLast = new Date(viewYear, viewMonth, 0);
    var thisLast = new Date(viewYear, viewMonth + 1, 0);

    var PLDate = prevLast.getDate(); //지난 달 마지막 날짜
    var PLDay = prevLast.getDay(); //지난 달 마지막 요일

    var TLDate = thisLast.getDate(); //이번 달 마지막 날짜
    var TLDay = thisLast.getDay(); //이번 달 마지막 요일

    // Dates 기본 배열들
    var prevDates = [];
    var thisDates = [...Array(TLDate + 1).keys()].slice(1);
    var nextDates = [];

    // prevDates 계산
    if (PLDay !== 6) { //만약 지난 달 마지막 요일이 일요일이 아니면
        for (var i = 0; i < PLDay + 1; i++) {
            prevDates.unshift(PLDate - i); // 금, 목, 수, 화, 월 순으로 배열 앞쪽에 추가
        }
    }

    // nextDates 계산
    for (var i = 1; i < 7 - TLDay; i++) {
        nextDates.push(i)
    }

    // Dates 합치기
    var dates = prevDates.concat(thisDates, nextDates);

    // Dates 정리
    const firstDateIndex = dates.indexOf(1);
    const lastDateIndex = dates.lastIndexOf(TLDate);
    dates.forEach((date, i) => {
    const condition = i >= firstDateIndex && i < lastDateIndex + 1
                      ? 'this'
                      : 'other';

    dates[i] = `<div class="date"><span class="${condition}">${date}</span></div>`;
    })

    // Dates 그리기
    $('.dates').html(dates.join(''));

      // 오늘 날짜 그리기
    const today = new Date();
    if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
        $.each($('.this'),function(index, item){
            if($(this).text() == today.getDate()){
                $(this).addClass('today');
            }
            
        });
    }

}


function prevMonth(){
  date.setMonth(date.getMonth() - 1);
  bulidCalendar();
}

function nextMonth (){
  date.setMonth(date.getMonth() + 1);
  bulidCalendar();
}

function goToday(){
  date = new Date();
  bulidCalendar();
}

bulidCalendar();









