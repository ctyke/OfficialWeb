$(document).ready(function(){
	$('#menu').click(function(){
        var io = this.io ^= 1;
        var toggleMenu = (io === 0) ? -200 :0;
        
        $('#menu_item').css({
        	transform: 'translate('+ toggleMenu +'px, 40px)'
    	});
    }); 
});
