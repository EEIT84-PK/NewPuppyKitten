package _600_controller;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value="/chatEndpoint.chat",configurator=ChatroomServerConfigurator.class)
public class ChatEndpoint{

	static Set<Session> users = Collections.synchronizedSet(new HashSet<Session>());
	private String user="";
	private String id="";

	@OnOpen
	public void handleOpen(EndpointConfig endpointConfig, Session userSession) throws IOException{
		
//		if(endpointConfig.getUserProperties().get("id")!=null){
//			userSession.getUserProperties().put("id",endpointConfig.getUserProperties().get("id"));
//		}
		userSession.getUserProperties().put("username",endpointConfig.getUserProperties().get("username"));
		users.add(userSession);
		if("後台管理員".equals(endpointConfig.getUserProperties().get("username"))){
			userSession.getBasicRemote().sendText(buildJsonData("系統訊息", "後台管理員連線成功!"));
		}else{
			userSession.getBasicRemote().sendText(buildJsonData("系統訊息", "連線成功!"));
			userSession.getBasicRemote().sendText(buildJsonData("後台管理員", "請問有什麼需要服務的嗎?"));
		}
		
	}
	
	@OnMessage
	public void handleMessage(String message, Session userSession) throws IOException{
			user=userSession.getUserProperties().get("username").toString();
					Iterator<Session> iterator =users.iterator();
					while(iterator.hasNext()){
						iterator.next().getBasicRemote().sendText(buildJsonData(user, message));
			}
		}
	@OnClose
	public void handleClose(Session userSession){
		users.remove(userSession);
	}
	
	private String buildJsonData(String username,String message){
		JsonObject json= Json.createObjectBuilder().add("message",username+":"+message).build();
		StringWriter sWriter = new StringWriter();
		try(JsonWriter jWriter=Json.createWriter(sWriter)){jWriter.write(json);}

		return sWriter.toString();
	}
	
}
