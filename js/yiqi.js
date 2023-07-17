// JavaScript Document
	var Zheight=document.documentElement.scrollHeight;
	var Zwidth = document.documentElement.scrollWidth;
	var Kheight = document.documentElement.clientHeight;
window.onload=function(){
			var xianzhi = document.getElementById("content-xianzhi");
			var dHeight=xianzhi.offsetHeight;
			var dWidth=xianzhi.offsetWidth;
			xianzhi.style.top=(Kheight-dHeight)/4+"px";		//设置居中 定义登陆框上边距离等于 （总高-登陆框高）/2

	
}
			function shanchutishi(){
				
					var zhezhao = document.getElementById("zhezhao");
					var tishik = document.getElementById("tishik");
				if(zhezhao){
					document.body.removeChild(zhezhao);
					document.body.removeChild(tishik);
				}
						
					
						
			}
				function tishi(img,wenzi,time){
					var zhezhao = document.createElement("div");
				   zhezhao.id="zhezhao";
				   zhezhao.style.height=Zheight+"px";
				   document.body.appendChild(zhezhao);
				var tishik = document.createElement("div");
				   	tishik.id="tishik";
				   	tishik.innerHTML="<div class=\"tsk-img\" align=\"center\">\
		<img src=\"images/icon/"+img+".png\"></div>\
		<div align=\"center\">\
			<p id=\"tsk-p\">"+wenzi+"</p>\
			</div>";
				   document.body.appendChild(tishik);
				    var DHeight= tishik.offsetHeight;
				   var DWidth = tishik.offsetWidth;
				   tishik.style.top=(Kheight-DHeight)/2+"px";	
				    tishik.style.left=(Zwidth-DWidth)/2+"px";	
			
				  
				   setTimeout("shanchutishi()",time);
					
					
					
				}


	function yuanfen(){
			var myname = document.getElementById("js-myname").value;
			var youname = document.getElementById("js-youname").value;
			if(myname!=="" || youname!==""){
				
			  
				  if (escape(myname).indexOf( "%u" )<0 || escape(youname).indexOf( "%u" )<0 || myname.length<2 || youname.length<2 || myname.length>4 || youname.length>4)
				   {
					
					tishi(1,"请输入正确的名字",1000 );
					     return false;
				   } else {
					 return true;
				 

			/*		var kaiqi = new XMLHttpRequest;
					kaiqi.open("POST","yuanfen.php")
					var shuju ="myname=" + document.getElementById("js-myname").value
							+ "&youname=" + document.getElementById("js-youname").value
							+ "&id=" + id;
					kaiqi.setRequestHeader("Content-type","application/x-www-form-urlencoded");
					kaiqi.send(shuju);
				kaiqi.onreadystatechange=function(){
								if(kaiqi.readyState===4){
										if(kaiqi.status===200){
											var fanhui = JSON.parse(kaiqi.responseText);	
											if(fanhui.success){
													if(fanhui.success==true){
														window.location.href="./yuanfen.php";
														
														
													}
												
											}
										}
									}	
								}
			*/
				
				
				  }
				
				
			   }else{
				
				tishi(1,"名字不能为空",1000);
				  return false;
		}
	}