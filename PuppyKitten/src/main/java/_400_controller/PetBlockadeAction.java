package _400_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _400_model.BlockadeBean;
import _400_model.PetService;

public class PetBlockadeAction extends ActionSupport implements ServletRequestAware{
	private BlockadeBean blockadeBean;	
	private String BLOCKADE_MENID;
	private HttpServletRequest req;	
			
	public String getBLOCKADE_MENID() {
		return BLOCKADE_MENID;
	}

	public void setBLOCKADE_MENID(String bLOCKADE_MENID) {
		BLOCKADE_MENID = bLOCKADE_MENID;
	}

	public BlockadeBean getBlockadeBean() {
		return blockadeBean;
	}

	public void setBlockadeBean(BlockadeBean blockadeBean) {
		this.blockadeBean = blockadeBean;
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
		PetService petService=new PetService();
		HttpSession session=req.getSession();
		blockadeBean.setBLOCKADE_MENID(Integer.parseInt(BLOCKADE_MENID));		
		BlockadeBean bean=petService.insert(blockadeBean);
		session.setAttribute("blockade", "成功!!");
		return "success";
	}
}
