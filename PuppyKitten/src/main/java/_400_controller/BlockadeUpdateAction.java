package _400_controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _500_model.MemberBean;
import _500_model.MemberService;

public class BlockadeUpdateAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest req;
	private MemberBean bean =new MemberBean();	
	
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

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req=req;		
	}
	public String execute(){
		MemberService mService=new MemberService();
		HttpSession session=req.getSession();		
		List<MemberBean>mBean=mService.selectMember2(Integer.parseInt(req.getParameter("MEM_ID")));			
		bean.setMEM_ACCOUNT(mBean.get(0).getMEM_ACCOUNT());
		bean.setMEM_ADD(mBean.get(0).getMEM_ADD());
		bean.setMEM_BIRTHDAY(mBean.get(0).getMEM_BIRTHDAY());
		bean.setMEM_ID(mBean.get(0).getMEM_ID());
		bean.setMEM_EMAIL(mBean.get(0).getMEM_EMAIL());
		bean.setMEM_IDCARD(mBean.get(0).getMEM_IDCARD());
		bean.setMEM_NAME(mBean.get(0).getMEM_NAME());
		bean.setMEM_PASSWORD(mBean.get(0).getMEM_PASSWORD());
		bean.setMEM_PHONE(mBean.get(0).getMEM_PHONE());
		bean.setMEN_STATUS(true);
		MemberBean update=mService.update2(bean);
		
		System.out.println("bean="+bean.getMEN_STATUS());
		
		List<MemberBean>select=mService.selectBlockade(false);
		System.out.println("select="+select);
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
