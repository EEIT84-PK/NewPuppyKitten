package _400_controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _400_model.BlockadeBean;
import _400_model.PetService;

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
		PetService petService =new PetService();
		HttpSession session=req.getSession();
		
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
