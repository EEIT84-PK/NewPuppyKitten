package _200_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;

public class ShopBackAction_searchproduct extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private ShopBean shopBean;

	public ShopBean getShopBean() {
		return shopBean;
	}

	public void setShopBean(ShopBean shopBean) {
		this.shopBean = shopBean;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	public String execute() {
		ShopService service = new ShopService();
		List<ShopBean> select_list =service.selectShop(shopBean);
		request.getSession().setAttribute("select_list", select_list);
		if(select_list.isEmpty()){
			request.getSession().setAttribute("select_404", "查無商品");
		}
		
		return "success";
	}

}
