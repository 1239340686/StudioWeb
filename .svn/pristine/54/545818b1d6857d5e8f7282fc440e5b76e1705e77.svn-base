// JavaScript Document
addEvent(window,'load',function(){
H_navSlide();
H_albumMarquee();
H_login();
//H_clickLogin1();
//H_clickLogin2();
H_search();
H_mesMarquee();
H_leap();
//notLogin();
});
//导航下划线
function H_navSlide(){
	var thisLeft;
    var H_green=getId('H_green');
	var Gr_left=H_green.offsetLeft;
	
	var H_li=getId('H_nav').getElementsByTagName('li');
	for(var i=0;i<H_li.length;i++){
		var _li=H_li[i];
	_li.onmouseover=function(){
		   thisLeft=this.offsetLeft;
				H_green.style.left=thisLeft+22+'px';
		}
	}
}
//相册滚动
function H_albumMarquee(){
	var H_timer=null;
	var H_aUl=getId('H_albumWrap').getElementsByTagName('ul')[0];
	H_aUl.innerHTML=H_aUl.innerHTML+H_aUl.innerHTML;
	function move(){
		if(H_aUl.offsetLeft<-H_aUl.offsetWidth/2){
			H_aUl.style.left="0";}
		H_aUl.style.left=H_aUl.offsetLeft-2+'px';
				}
    H_timer=setInterval(move,30);
	H_aUl.onmouseover=function(){
		clearInterval(H_timer);}
	H_aUl.onmouseout=function(){
		H_timer=setInterval(move,30);}
	}
//管理员和用户登录界面切换
function H_login(){
	var H_userLogin=getId('H_userLogin');
	var H_userF=getId('H_userF');
	var H_managerF=getId('H_managerF');
	    H_userLogin.onmouseover=function(){
			H_userLogin.style.background="#ccccff";
			H_userF.style.display="block";
			H_managerF.style.display="none";
			}
		   H_userLogin.onmouseout=function(){
			H_userLogin.style.background="white";
			}
	var H_managerLogin=getId('H_managerLogin');
		H_managerLogin.onmouseover=function(){
			H_managerF.style.display="block";
			H_userF.style.display="none";
	H_managerLogin.style.background="#ccccff";
	}
	H_managerLogin.onmouseout=function(){
	H_managerLogin.style.background="white";
	}	

	}
function H_leap(){
	var leap=getId('H_leap');
	var H_timer3=null;
	H_timer3=setInterval(function(){
		//leap.style.top=leap.offsetTop+1+'px';
		if(leap.offsetTop==0){
			leap.style.top=leap.offsetTop+2+'px';}
		else if(leap.offsetTop>1)
		{leap.style.top=leap.offsetTop-2+'px';}
		},300);
	}


function H_search(){
var Hsearch=document.getElementsByName('Hsearch')[0];
Hsearch.onfocus=function(){
	Hsearch.value="";
}
Hsearch.onblur=function(){
	Hsearch.value="请输入要查找的内容";
}
	}

function H_mesMarquee(){
		var H_timer4=null;
		var H_mesUL=getId('H_mright').getElementsByTagName('ul')[0];
		function move(){
		if(H_mesUL.offsetTop<-H_mesUL.offsetHeight){
			H_mesUL.style.top="0";}
			else{
		H_mesUL.style.top=H_mesUL.offsetTop-1+'px';}
				}
    H_timer4=setInterval(move,30);
	H_mesUL.onmouseover=function(){
		clearInterval(H_timer4);}
	H_mesUL.onmouseout=function(){
		H_timer4=setInterval(move,300);}
	}
	/*
function H_clickLogin1(){
	var H_loginB=document.getElementsByName('loginButton')[0];
	H_loginB.onclick=H_check;}
	
function H_check(){
	var text=document.getElementsByName('username')[0].value;
	 var pattern=/\d{10}/;
	if( pattern.test(text)==false){
		alert("输入的用户名有误！");
		}
	}
	//管理员登录检验



	
function H_clickLogin2(){
	var H_loginB=document.getElementsByName('loginButton2')[0];
	H_loginB.onclick=H_check2;
	}
function H_check2(){
	var text2=document.getElementsByName('managename')[0].value;
	var text4=document.getElementsByName('managepsw')[0].value;
	var formAction=document.getElementsByName('H_f2')[0];
if(text2=="adminstor"&&text4=="123"){
	formAction.action="manage.html"; 
    }
	else{ alert("请输入正确的账号和密码！");}
}
*/
	//new跳动

	//组织默认行为
	