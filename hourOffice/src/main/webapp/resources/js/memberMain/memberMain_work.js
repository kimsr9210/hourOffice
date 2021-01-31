/*근태관리*/
    window.onload = function() {
		printTime();
	};
    function printTime() {
		var clock = document.getElementById("clock");
		var now = new Date();
        var week = new Array('일','월','화','수','목','금','토');
        var weekDay = week[now.getDay()];
		
		clock.innerHTML = now.getFullYear() + "년 " +
		(now.getMonth()+1) + "월 " +
		now.getDate() + "일 " +
        "("+weekDay+") "+
		now.getHours() + ":" +
		now.getMinutes() + ":" +
		now.getSeconds();
		
		setTimeout("printTime()", 1000);
	}

    var goClock;
    var backClock;    
    $('#go').click(function(){
        var $go = $('#go-clock');
        goClock = new Date();
        
        $go.html(goClock.getHours() + ":" +
		goClock.getMinutes() + ":" +
		goClock.getSeconds());
    });
    
    $('#back').click(function(){
        var $go = $('#back-clock');
        var $hour = $('#work-hour');
        var $minute = $('#work-minute');
        
        backClock = new Date();
        var workTime = backClock - goClock;
        
        $go.html(backClock.getHours() + ":" +
		backClock.getMinutes() + ":" +
		backClock.getSeconds());
        
        var hour = Math.floor((workTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minute = Math.floor((workTime % (1000 * 60 * 60)) / (1000 * 60));
        
        $hour.html(hour);
        $minute.html(minute);
    });