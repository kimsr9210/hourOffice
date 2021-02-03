/*근태관리*/
    $(function() {
		printTime();
		
		var goClock;
	    var backClock;
	    var $go = $('#go-clock');
	    var $back = $('#back-clock');
	    
	    $('#go').click(function(){
	    	if($go.text().indexOf(':')>0){
	    		alert('이미 출근하였습니다.');
	    	}else{
	            goClock = new Date();
	            
	            $go.html(goClock.getHours() + ":" +
	    		goClock.getMinutes() + ":" +
	    		goClock.getSeconds());
	    	}

	    });
	    
	    $('#back').click(function(){
	        if($go.text().indexOf(':')>0){
	        	if($back.text().indexOf(':')>0){
		    		alert('이미 퇴근하였습니다.');
		    	}else{
		    		var $hour = $('#work-hour');
		            var $minute = $('#work-minute');
		            
		            backClock = new Date();
		            var workTime = backClock - goClock;
		            
		            $back.html(backClock.getHours() + ":" +
		    		backClock.getMinutes() + ":" +
		    		backClock.getSeconds());
		            
		            var hour = Math.floor((workTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		            var minute = Math.floor((workTime % (1000 * 60 * 60)) / (1000 * 60));
		            
		            $hour.html(hour);
		            $minute.html(minute);
		    	}
	        	
	                    	
	        }else{
	        	alert('출근을 먼저 해주세요');
	        }
	    });
	    
	});
    
    function printTime() {
		var clock = document.getElementById("clock");
		var today = new Date();
        var week = new Array('일','월','화','수','목','금','토');
        var weekDay = week[today.getDay()];
		
		clock.innerHTML = today.getFullYear() + "년 " +
		(today.getMonth()+1) + "월 " +
		today.getDate() + "일 " +
        "("+weekDay+") "+
        today.getHours() + ":" +
        today.getMinutes() + ":" +
        today.getSeconds();
		
		setTimeout("printTime()", 1000);
	}