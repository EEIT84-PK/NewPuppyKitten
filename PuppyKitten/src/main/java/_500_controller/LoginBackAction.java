package _500_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginBackAction extends ActionSupport implements ServletRequestAware{
	private String username;
	private String password;
	private HttpServletRequest req;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void validate(){
		if(username.trim().length()==0){
			addFieldError("usererror", "帳號不得為空白");
		}
		if(password.trim().length()==0){
			addFieldError("pswderror", "密碼不得為空白");
		}
		
		if(username.trim().length()!=0&&password.trim().length()!=0){
			if(!username.equals("username")||!password.equals("sa123456")){
				addFieldError("loginerror", "沒有此後台管理帳號或密碼錯誤");
			}
		}
		
		
	}
	
	public String execute(){
		HttpSession session=req.getSession();
		session.setAttribute("loginOK", "後台管理員");
		return SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req=req;
		
	}
}
