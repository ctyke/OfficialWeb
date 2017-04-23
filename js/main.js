function init() {
	var banner=document.querySelector("#banner");
	getCurrentTime();
	changeBgImg();
	setInterval(getCurrentTime,60000);
	

}

function getCurrentTime(){
	var currentDate = new Date(); 
	var currentTime =("0" + currentDate.getHours()).slice(-2)+":"+('0' + currentDate.getMinutes()).slice(-2);

	banner.innerHTML = currentTime;
}

function changeBgImg(){
	var currentDate = new Date(); 
	var hours = currentDate.getHours()
	
	var bgImg = document.querySelector('#content');

	if(4<=hours && hours<8){
		bgImg.style.backgroundImage = "url(img/5.jpg)";
	}else if(8<=hours && hours<11){
		bgImg.style.backgroundImage = "url(img/1.jpg)";
	}else if(11<=hours && hours<17){
		bgImg.style.backgroundImage = "url(img/2.jpg)";
	}else if(17<=hours && hours<19){
		bgImg.style.backgroundImage = "url(img/3.jpg)";
	}else{
		bgImg.style.backgroundImage = "url(img/4.jpg)";

	}
}
