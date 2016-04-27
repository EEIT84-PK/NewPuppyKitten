<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<script type="text/javascript">
			

		
			var websocket = new WebSocket("ws://localhost:8080/PuppyKitten/chatEndpoint.chat");
			websocket.onopen = function processOpen(){
			}
			websocket.onmessage = function processMessage(message) {
				var jsonData = JSON.parse(message.data);
				if(jsonData.message!=null){
					area.value += jsonData.message +"\n";
				}
				
			}
			
			$(function(){
				$('#sendmsg').click(function(){
					websocket.send(text.value);
					text.value="";
				});
			});
		</script>
		<textarea style="font-size: 20px;" id="area" readonly="readonly" rows="10" cols="45" ></textarea><br>
		<input type="text" id="text" size="48" style="font-size: 16px;margin-left: 42px;" /><input style="font-size: 20px;margin-left: 15px;" id="sendmsg" type="button" value="送出" />
