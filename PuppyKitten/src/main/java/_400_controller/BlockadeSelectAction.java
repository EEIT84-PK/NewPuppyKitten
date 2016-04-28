package _400_controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _400_model.PetRelationBean;
import _500_model.MemberBean;
import _500_model.MemberService;


public class BlockadeSelectAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest req;

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
		List<MemberBean>select=mService.selectBlockade(false);
		List<MemberBean> list = new ArrayList<MemberBean>();
		for(int i=0;i<select.size();i++){
			list.add(select.get(i));
		}
		if(list.isEmpty()){
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
