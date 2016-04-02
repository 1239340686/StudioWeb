// JavaScript Document
	function getId(id){
		return document.getElementById(id);
	}
	
	

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