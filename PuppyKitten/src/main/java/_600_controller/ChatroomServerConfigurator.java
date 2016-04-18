package _600_controller;

import javax.servlet.http.HttpSession;
import javax.websocket.HandshakeResponse;
import javax.websocket.server.*;

public class ChatroomServerConfigurator extends ServerEndpointConfig.Configurator {
	public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest request, HandshakeResponse response) {
		if (((HttpSession) request.getHttpSession()).getAttribute("loginOK") == null) {
			sec.getUserProperties().put("username", "訪客");
		} else{
			sec.getUserProperties().put("username",
					((HttpSession) request.getHttpSession()).getAttribute("loginOK").toString());
		}

	}

}
