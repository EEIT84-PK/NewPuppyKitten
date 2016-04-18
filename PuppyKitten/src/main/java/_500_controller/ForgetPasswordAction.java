package _500_controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import _500_model.MemberBean;
import _500_model.MemberService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ForgetPasswordAction extends ActionSupport implements
		ServletRequestAware {
	private MemberBean bean;
	private HttpServletRequest req;
	private String password;
	private String use;
	private String newpwd;

	public String getNewpwd() {
		return newpwd;
	}

	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}

	public MemberBean getBean() {
		return bean;
	}

	public void setBean(MemberBean bean) {
		this.bean = bean;
	}

	public HttpServletRequest getReq() {
		return req;
	}

	public void setReq(HttpServletRequest req) {
		this.req = req;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	public void validate() {

		for (int n = 0; n < bean.getMEM_ACCOUNT().length(); n++) {
			char checkaccount = bean.getMEM_ACCOUNT().charAt(n);
			if (checkaccount >= 65 && checkaccount <= 90 || checkaccount >= 97
					&& checkaccount <= 122 || checkaccount >= 48
					&& checkaccount <= 57) {

			} else {
				this.addFieldError("MEM_ACCOUNT", "請輸入英文,數字");
			}
		}

		if (bean.getMEM_ACCOUNT() == null
				|| bean.getMEM_ACCOUNT().trim().length() == 0) {
			this.addFieldError("MEM_ACCOUNT", "請輸入帳號");
		}
		if (bean.getMEM_EMAIL() == null
				|| bean.getMEM_EMAIL().trim().length() == 0) {
			this.addFieldError("MEM_EMAIL", "請輸入email");
		}
		MemberService service = new MemberService();
		boolean is = service.checkemailaccount(bean.getMEM_EMAIL(),
				bean.getMEM_ACCOUNT());
		if (is) {

		} else {
			this.addFieldError("MEM_EMAIL", "沒有此email跟帳號");
		}
	}

	public String execute() throws Exception {
		MemberService service = new MemberService();
		String pwd = "";
		if (use.equals("發送email")) {

			int z;
			StringBuilder sb = new StringBuilder();
			int i;
			for (i = 0; i < 8; i++) {
				z = (int) ((Math.random() * 7) % 3);

				if (z == 1) { // 放數字
					sb.append((int) ((Math.random() * 10) + 48));
				} else if (z == 2) { // 放大寫英文
					sb.append((char) (((Math.random() * 26) + 65)));
				} else {// 放小寫英文
					sb.append(((char) ((Math.random() * 26) + 97)));
				}
				
			}
			String a = sb.toString();
			pwd += sb;}
			service.sendpwdemail(bean.getMEM_EMAIL(), bean.getMEM_ACCOUNT(), pwd);
			boolean is=service.cheagenewpassword(bean.getMEM_ACCOUNT(), pwd);
            if(is){	
            }else{
            	
            }
		
		return SUCCESS;	
		
	}



	
	

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub

	}
}
