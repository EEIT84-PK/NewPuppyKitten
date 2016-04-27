package _200_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;

public class ShopBackAction_delete extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private ShopBean shopbean;


	public ShopBean getShopbean() {
		return shopbean;
	}

	public void setShopbean(ShopBean shopbean) {
		this.shopbean = shopbean;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String execute() {
		ShopService service = new ShopService();
		
		//刪除項目
		service.delete(shopbean.getPRO_ID());
		request.setAttribute("delete_OK", "刪除成功");
		
		//查詢剩餘項目
		List<ShopBean> select_list = service.selectShop(shopbean);
		request.setAttribute("select_list", select_list);
			
			
		return SUCCESS;
		
	}

}
