package _400_controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _400_model.BlockadeBean;
import _400_model.PetRelationBean;
import _400_model.PetService;
import _500_model.MemberBean;
import _500_model.MemberService;

public class BlockadeInsertAction extends ActionSupport implements ServletRequestAware{
	private MemberBean bean =new MemberBean();
	private HttpServletRequest req;		

	public MemberBean getmBean() {
		return bean;
	}

	public void setmBean(MemberBean bean) {
		this.bean = bean;
	}

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
		MemberService mService=new MemberService();
		PetService petService=new PetService();
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
		bean.setMEN_STATUS("0");
		MemberBean update=mService.update2(bean);		
		
		List<BlockadeBean>bean=petService.selectBlockadeAll();
		List<BlockadeBean> list = new ArrayList<BlockadeBean>();	
		
		for(int j=0;j<bean.size();j++){
			if(bean.get(j).getBLOCKADE_MENID().toString().equals(req.getParameter("MEM_ID").toString())){
				BlockadeBean Bbean = new BlockadeBean();
				Bbean.setBLOCKADE_MENID(bean.get(j).getBLOCKADE_MENID());
				Bbean.setBLOCKADE_THING(bean.get(j).getBLOCKADE_THING());
				BlockadeBean BDelete=petService.delete(Bbean);
				bean.remove(j);
				break;
			}
		}		
		
		if(!bean.isEmpty()){
			for(int i=0;i<bean.size();i++){			
				list.add(bean.get(i));
			}			
		}
		
		if(list.isEmpty()){			
			session.removeAttribute("Blocklist");
			session.setAttribute("noBlock", "目前沒任何人被檢舉");
		}else{			
			session.removeAttribute("noBlock");
			session.setAttribute("Blocklist", list);
		}		
		
		return "success";
	}
}
