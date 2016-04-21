package _400_controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _500_model.MemberBean;
import _500_model.MemberService;

public class BlockadeSelectOneAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest req;
	private String MEM_ID;	
	
	public String getMEM_ID() {
		return MEM_ID;
	}

	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}

	public HttpServletRequest getReq() {
		return req;
	}

	public void setReq(HttpServletRequest req) {
		this.req = req;
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req=req;
		
	}
	public String execute(){
		MemberService mService=new MemberService();
		HttpSession session=req.getSession();
		List<MemberBean>select=mService.selectMember2(Integer.parseInt(MEM_ID));		
		List<MemberBean> list = new ArrayList<MemberBean>();
		if(select.get(0).getMEN_STATUS().equals("0")){
			list.add(select.get(0));
		}		
		
		if(list.isEmpty()){
			session.setAttribute("noSelectOne", "此會員沒有被封鎖");
			session.setAttribute("noSelect", "目前沒有被封鎖的會員");
			session.removeAttribute("Selectlist");
		}else{
			session.setAttribute("Selectlist", list);
			session.removeAttribute("noSelect");
			session.removeAttribute("noSelectOne");
		}
		return "success";
	}
}
