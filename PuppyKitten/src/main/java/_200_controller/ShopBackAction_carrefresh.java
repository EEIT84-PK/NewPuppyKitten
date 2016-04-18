package _200_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopService;
import _200_model.Shop_Buy_Bean;

public class ShopBackAction_carrefresh extends ActionSupport implements ServletRequestAware {

	private Shop_Buy_Bean shop_Buy_Bean;
	private HttpServletRequest request;

	public Shop_Buy_Bean getShop_Buy_Bean() {
		return shop_Buy_Bean;
	}

	public void setShop_Buy_Bean(Shop_Buy_Bean shop_Buy_Bean) {
		this.shop_Buy_Bean = shop_Buy_Bean;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String execute() {
		ShopService service = new ShopService();
		System.out.println(shop_Buy_Bean);
		List<Shop_Buy_Bean> shop_Buy_list = service.select_buy(shop_Buy_Bean);
		request.getSession().setAttribute("shop_Buy_list", shop_Buy_list);
		Integer total=0;
		for(Shop_Buy_Bean bean : shop_Buy_list){
			total+=bean.getBUY_LITTLE_TOTAL();
		}
		request.getSession().setAttribute("total", total);
		
		return "success";

	}

}
