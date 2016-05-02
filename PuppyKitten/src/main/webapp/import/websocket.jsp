<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<span style="color:white;float:left;">即時客服</span>
    	<img id="ws1" src="<%=request.getContextPath()%>/images/ad/circle.png" style="float: left;margin-left:10px;display: block;cursor: pointer;" />
    	<img id="ws2" src="<%=request.getContextPath()%>/images/ad/circle.png" style="float: left;margin-left:10px;display: block;cursor: pointer;" />
    	<img src="<%=request.getContextPath()%>/images/minus.png" style="height: 10px;width: 20px;float: right;display: block;" />
		<textarea id="area" style="font-size: 20px;font-family:'微軟正黑體';margin-top: 20px;" readonly="readonly" rows="10" cols="42"></textarea><br>
		<input type="text" id="text" size="53" /><input id="sendmsg" type="button" value="送出" />
