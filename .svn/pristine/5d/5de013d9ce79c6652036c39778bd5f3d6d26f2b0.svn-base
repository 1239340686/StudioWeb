 // JavaScript Document
 window.onload=function(){
	  H_navSlide();
	  N_changeImg();
	  N_imgScroll();
	 }
 function change1(t)
    {
        var Ntabadetail=document.getElementById("Ntaba-detail");
        var Ntabbdetail=document.getElementById("Ntabb-detail");
		var Ntabcdetail=document.getElementById("Ntabc-detail");
		
    
        if(t==0){
            Ntabadetail.style.display="block";
            Ntabbdetail.style.display="none";
			Ntabcdetail.style.display="none";
        }
        if(t==1){
		   Ntabbdetail.style.display="block";
           Ntabadetail.style.display="none";
		   Ntabcdetail.style.display="none";
            
        }
		if(t==2){
            Ntabcdetail.style.display="block";
            Ntabadetail.style.display="none";
			Ntabbdetail.style.display="none";
        }
    }
	
 function N_changeImg(){	
  var curIndex=0;
  var timeInterval=3000;
  setInterval(changeImg,timeInterval);
  var arr=new Array();
		arr[0]="../image/Nmulti1.jpg";
		arr[1]="../image/Nmulti2.jpg";
		arr[2]="../image/Nmulti3.jpg";
		arr[3]="../image/Nmulti4.jpg";
 function changeImg()
  {     
  	var obj=document.getElementById("Nmulobj");
		if(curIndex==arr.length-1)
		{
			curIndex=0;		
		}
		else
		{
			curIndex+=1;
		}
		obj.src=arr[curIndex];
  }
 }

function N_imgScroll(){
	  var Nscrocontainer=document.getElementById("Nscoroll-container");
	  var Nscrolllist=document.getElementById("Nscroll-list");
	  var Nscrollbuttons=document.getElementById("Nscroll-buttons").getElementsByTagName("span");
	  var Nprev=document.getElementById("prev");
	  var Nnext=document.getElementById("next");
	  var index=1;
	  function showButton(myIndex){
		  	for(var i=0;i<Nscrollbuttons.length;i++){
					if(Nscrollbuttons[i].className=='on') {
							Nscrollbuttons[i].className='';
							break;
					}
			}
			Nscrollbuttons[index-1].className='on';
	 }
	  	  
     Nnext.onclick=function(){
      if(index==5){
		  	index=1;
	  }
	  else{
		  	index+=1;
	  }
		  animate(-640);
		  showButton();
		 }
    Nprev.onclick=function(){
	 if(index==1){
		  	index=5;
	  }
	  else{
		  	index-=1;
	  } 
	      animate(640);
		  showButton();
	  } 
	  function animate(offset){
		 Nscrolllist.style.left=parseInt(Nscrolllist.style.left)+offset+'px' ; 
		  if(Nscrolllist.offsetLeft>-640){
			 Nscrolllist.style.left=-3200+'px';  }
		  if(Nscrolllist.offsetLeft<-3200){
			 Nscrolllist.style.left=-640+'px' ;  }	  	
	  }
	  	for(var i=0;i<Nscrollbuttons.length;i++){
				Nscrollbuttons[i].onclick=function(){
						if(this.className=='on'){
								return;
						}
						var myIndex=parseInt(this.getAttribute('index'));
						var offset=-640*(myIndex-index);
						index=myIndex;
						showButton();
						animate(offset);
				}
		}
	}	
  
 