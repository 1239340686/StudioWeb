// JavaScript Document
window.onload=function(){
	var ima=document.getElementsByTagName("img");
	ima.timer=null;
	for(var i=0;i<ima.length;i++)
	{	
			ima[i].onmouseover=function()
			{
				var count=0;
				var hhh=new Array(new Array(5),new Array(5),new Array(5),new Array(5));//储存转换时每张图片目标位值
				for(var j=0;j<ima.length;j++)//每张图片都旋转
								{
									var a,b,c,d,e;
									var x=parseInt(getstyle(ima[j],"left"));
									var y=parseInt(getstyle(ima[j],"top"));
									 if((x<=650&&x>400)&&(y>=300&&y<400))//此时图片最顶部
										{
											a=200;
											b=200;
											c=400;
											d=400;
											e=1;	
										}
									 else{
											if((x<550&&x>=400)&&(y>=400&&y<550))//此时图片左部分
											{
												a=350;
												b=350;
												c=550;
												d=550;
												e=3;
											}
											else{
												if((x<870&&x>=550)&&(y>400&&y<=550))//此时图片最下面
												{
													a=200;
													b=200;
													c=870;
													d=400;
													e=1;	
												}
												else
												 {
													if((x<=870&&x>650)&&(y>300&&y<=400))//此时图片在最右边
													{
														a=150;
														b=150;
														c=650;
														d=300;
														e=0;	
													}
												}
											}
	          						  }
									  hhh[j][0]=a;
									  hhh[j][1]=b;
									  hhh[j][2]=c;
									  hhh[j][3]=d;
									  hhh[j][4]=e;
								}
						for(var i=0;i<ima.length;i++)
						{
							for(var j=0;j<ima.length;j++)
							{
								if(i==j) continue;
								else
								{
									if(hhh[i][2]!=hhh[j][2])
									count++;
								}
							}
						}	
					  if(count==12) move(this,ima,hhh);				
			};
	}
};							
//开启定时器
function move(obj,ima,hhh){
		clearInterval(ima.timer);
		ima.timer=setInterval(function(){
					var count=0;	
					for(var i=0;i<ima.length;i++)
						{
							if(Startmove(ima[i],{width:hhh[i][0],height:hhh[i][1],left:hhh[i][2],top:hhh[i][3]},hhh[i][4]))
							{
								count++;
							}		
						}
					 if(count==4)
					 {
						clearInterval(ima.timer);
					}		 
				},30);
}

//每张图片运动到指定位置
function Startmove(obj,json,e){
		var astop=true;
		var count=0;
		for(var attr in json)
		{
			var now=parseInt(getstyle(obj,attr));
			var speed=(json[attr]-now)/5;
			speed=speed>0?Math.ceil(speed):Math.floor(speed);
			count++;
			if(now!=json[attr])
			{
				astop=false;
				obj.style[attr]=now+speed+'px';
				obj.style.zIndex=e
			}
		}	
		if(astop==true){ return true;}
		else return false;
	}
	
//获取样式
function getstyle(obj,name){
	if(obj.currentStyle)
	 	{
			return obj.currentStyle[name];
		}
	else
		{
			return getComputedStyle(obj,false)[name];
		}
		
}
