$(document).ready(function(){
	$('#websocketdiv').hide();
	 var oldtext=['精品購物','寵物聯誼','寵物旅遊','討論區']
     var newtext=['Select','Dating','Tourism','WeChat']
     $(".sub").slideUp(0)
     for(i=0;i<$(".main").length;i++){
         $(".item:eq("+i+")").mouseover({id:i},function(e){
             n=e.data.id;
             $(".sub:eq("+n+")").stop().slideDown();
         });
         $(".item").mouseout({id:i},function(e){
             n=e.data.id;
             $(".sub:eq("+n+")").stop().slideUp();
         });
         $(".main:eq("+i+")").mouseover({id:i},function(e){
             n=e.data.id;
             $(".main:eq("+n+")").text(newtext[n]);
             }).mouseout({id:i},function(e){
                 n=e.data.id;
               $(".main:eq("+n+")").text(oldtext[n]);
           });
             
     }
	 $('#sendmsg').click(function(){
			websocket.send(text.value);
			text.value="";
		});
	 $('#footermsg').mouseover(function(){
		 $(this).css("color","white").mouseout(function(){
			 $(this).css("color","#f2daa8");
		 });
	 });
	 $('#footermsg').click(function(){
		 $('#websocketdiv').stop().slideToggle();
	 });
});