window.onload=function(){
	var ima=document.getElementsByTagName("img");
	for(var i=0;i<ima.length;i++)
		{
			ima[i].timer=null;
			ima[i].onmouseover=function(){
				StartMove(this,330,250);
				};
				
			ima[i].onmouseout=function(){
				
				StartMove(this,250,200);
				};
		}
};
/*鼠标移入主相册尺寸大小变�*/	
function getstyle(obj,name){
	if(obj.currentStyle)
			return obj.currentStyle[name];
	else
			return getComputedStyle(obj,false)[name];	
}
function StartMove(Obj,target1,target2){
    	clearInterval(Obj.timer);
		Obj.timer=setInterval(function(){
			var speed1=(target1-parseInt(getstyle(Obj,'width')))/6;
			var speed2=(target2-parseInt(getstyle(Obj,'height')))/6;
				speed1=speed1>0?Math.ceil(speed1):Math.floor(speed1);
				speed2=speed2>0?Math.ceil(speed2):Math.floor(speed2);
				
				if(parseInt(getstyle(Obj,'width'))==target1&&parseInt(getstyle(Obj,'height'))==target2)
				 {
				   clearInterval(Obj.timer);
				 }
			   else
				   {
					   Obj.style.width=parseInt(getstyle(Obj,'width'))+speed1+'px';
					   Obj.style.height=parseInt(getstyle(Obj,'height'))+speed2+'px';
				   }
			},30);
}
	