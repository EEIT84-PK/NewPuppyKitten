package _500_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _500_model.MemberBean;
import _500_model.MemberService;

@SuppressWarnings("serial")
public class SelectAllAction extends ActionSupport implements ServletRequestAware {
	private MemberBean bean;
	private HttpServletRequest req;

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

	public String execute() {
		MemberService service = new MemberService();
		List<MemberBean> list =service.selectmember();
		req.setAttribute("select", list);
		return "success";
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req=req;
		
	}
}
