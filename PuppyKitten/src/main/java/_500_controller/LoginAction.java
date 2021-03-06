package _500_controller;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import _500_model.MemberBean;
import _500_model.MemberService;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport implements SessionAware {
	private String account;
	private String password;
	private Map<String, Object> session;
	MemberService service = new MemberService();
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void validate() {
		if (account == null || account.trim().length() == 0) {
			this.addFieldError("account", "帳號不可以空白");
		}
		if (password == null || password.trim().length() == 0) {
			this.addFieldError("password", "密碼不可以空白");
		}
	}	

	public String execute() throws Exception {
		MemberBean bean = service.login(account, password);
		List<MemberBean>bean2=service.selectMember(account);
		if (bean == null) {
			this.addFieldError("loginerror", "沒有此帳號或密碼錯誤");
			return INPUT; 
		} else if((bean!=null)&&bean2.get(0).getMEN_STATUS().equals(true)){			
             session.put("loginOK", bean.getMEM_NAME());
             session.put("memberID", bean.getMEM_ID());
             session.put("memberADD", bean.getMEM_ADD());
             session.put("memberPHONE", bean.getMEM_PHONE());
             
			return SUCCESS;
		}else{
			this.addFieldError("loginerror", "此帳號已被封鎖");
			return INPUT;
		}
	}

}
