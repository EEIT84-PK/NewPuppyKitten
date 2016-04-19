package _400_controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class BlockadeDeleteAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest req;
	public HttpServletRequest getReq() {
		return req;
	}

	public void setReq(HttpServletRequest req) {
		this.req = req;
	}

	public void setServletRequest(HttpServletRequest req) {
		this.req = req;
	}
	public String execute(){
		
		return "success";
	}
}
