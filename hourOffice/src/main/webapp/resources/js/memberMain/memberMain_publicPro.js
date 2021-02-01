$(function(){
    $('.fa-star').click(function(){ /*즐겨찾기 색상 바꾸기*/
        
        if($(this).css('color')=='rgb(255, 255, 0)'){
            $(this).css('color','white');
            
        }else{
            $(this).css('color','yellow');
        }
        
    });
    
});
