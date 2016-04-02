// JavaScript Document
window.onload=function(){
	f1();
	H_navSlide();
function f1(){
 var speed =20
            var MyMar = setInterval(Marquee, speed)
            var Ilistcon = document.getElementById("IlistContainer");//用getElememtById是为了兼容FF
            var Ilistcon2 = document.getElementById("IlistContainer2");
            var Ilistcon1 = document.getElementById("IlistContainer1");
            Ilistcon2.innerHTML = Ilistcon1.innerHTML
            Ilistcon.onmouseover =function () { clearInterval(MyMar) }
            Ilistcon.onmouseout =function () { MyMar = setInterval(Marquee, speed) }
            function Marquee() {
                if (Ilistcon2.offsetWidth - Ilistcon.scrollLeft <=0)
                    Ilistcon.scrollLeft -= Ilistcon1.offsetWidth
                else {
                    Ilistcon.scrollLeft++
                }
            } 
}
}