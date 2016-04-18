package _200_controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import _200_model.ShopBean;
import _200_model.ShopService;

public class ShopBackAction_5 extends ActionSupport implements ServletRequestAware {

	private ShopBean shopbean;
	private HttpServletRequest request;

	public ShopBean getShopbean() {
		return shopbean;
	}

	public void setShopbean(ShopBean shopbean) {
		this.shopbean = shopbean;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	public String execute() {
		ShopService service = new ShopService();
		List<ShopBean> select_list = service.select(shopbean);
			request.getSession().setAttribute("select_list", select_list);
			return "success";
	}
}
