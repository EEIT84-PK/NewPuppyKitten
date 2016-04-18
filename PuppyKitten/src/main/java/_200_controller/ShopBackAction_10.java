package _200_controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;
import _200_model.Shop_Buy_Bean;
import _200_model.Shop_Order_Bean;
import _500_model.MemberBean;

public class ShopBackAction_10 extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private Shop_Buy_Bean shop_Buy_Bean;
	private ShopBean shopBean;
	private Shop_Order_Bean shop_Order_Bean;
	private MemberBean memberBean;
	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Shop_Order_Bean getShop_Order_Bean() {
		return shop_Order_Bean;
	}

	public void setShop_Order_Bean(Shop_Order_Bean shop_Order_Bean) {
		this.shop_Order_Bean = shop_Order_Bean;
	}

	public MemberBean getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(MemberBean memberBean) {
		this.memberBean = memberBean;
	}

	public Shop_Buy_Bean getShop_Buy_Bean() {
		return shop_Buy_Bean;
	}

	public void setShop_Buy_Bean(Shop_Buy_Bean shop_Buy_Bean) {
		this.shop_Buy_Bean = shop_Buy_Bean;
	}

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
		List<Shop_Buy_Bean> list = service.select_buy(shop_Buy_Bean);
		request.getSession().setAttribute("list", list);
		Integer price = 0;
		Integer total = 0;
		for (Shop_Buy_Bean bean : list) {
			price += bean.getBUY_LITTLE_TOTAL();
			total = price+80;
			request.getSession().setAttribute("total", total);
		}

		return "success";
	}

}
