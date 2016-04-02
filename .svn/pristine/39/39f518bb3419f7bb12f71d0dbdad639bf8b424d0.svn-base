// JavaScript Document
	function getId(id){
		return document.getElementById(id);
	}

/*<!--	function  manageDelete(Delete){
	for(var i=0;i<Delete.length;i++){
	De=Delete[i];
	De.onclick=function(){
		if(confirm("确定删除?")==true)
		{
			};
		
		}
		}
	
	}-->*/
function addEvent(obj,type,fn){
	if(obj.addEventListener){
		obj.addEventListener(type,fn,false);}
		else if(obj.attachEvent){
			obj.attachEvent('on'+type,fn);
		}
}

function removeEvent(obj,type,fn){
	if(obj.removeEventListener)
		{
	      obj.removeEventListener(type,fn,false);
			}	
	    else if(obj.detachEvent){
			obj.detachEvent('on'+type,fn);}
	
}