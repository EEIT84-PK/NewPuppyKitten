package _400_controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _400_model.BlockadeBean;
import _400_model.PetAllBean;
import _400_model.PetRelationBean;
import _400_model.PetService;

public class PetBlockadeBackAction extends ActionSupport implements ServletRequestAware{
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
		PetService petService=new PetService();
		HttpSession session=req.getSession();
		List<BlockadeBean>bean=petService.selectBlockadeAll();
		List<BlockadeBean> list = new ArrayList<BlockadeBean>();
		for(int i=0;i<bean.size();i++){
			list.add(bean.get(i));
		}
		
		if(list.isEmpty()){
			req.removeAttribute("Blocklist");
			req.setAttribute("noBlock", "目前沒任何人被檢舉");						
		}else{
			req.removeAttribute("noBlock");
			req.setAttribute("Blocklist", list);							
		}		
		return "success";
	}
}
