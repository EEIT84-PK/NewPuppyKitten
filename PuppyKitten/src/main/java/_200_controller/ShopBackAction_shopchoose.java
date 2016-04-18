package _200_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;
import _200_model.Shop_Buy_Bean;
import _500_model.MemberBean;

public class ShopBackAction_shopchoose extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private ShopBean shopbean;
	private Shop_Buy_Bean shop_Buy_Bean;
	private MemberBean memberbean;

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public ShopBean getShopbean() {
		return shopbean;
	}

	public void setShopbean(ShopBean shopbean) {
		this.shopbean = shopbean;
	}

	public Shop_Buy_Bean getShop_Buy_Bean() {
		return shop_Buy_Bean;
	}

	public void setShop_Buy_Bean(Shop_Buy_Bean shop_Buy_Bean) {
		this.shop_Buy_Bean = shop_Buy_Bean;
	}

	public MemberBean getMemberbean() {
		return memberbean;
	}

	public void setMemberbean(MemberBean memberbean) {
		this.memberbean = memberbean;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	public String execute() {
		ShopService service =new ShopService();
		
		if(service.select_name(shop_Buy_Bean.getBUY_NAME()).isEmpty()){
			shop_Buy_Bean.setBUY_LITTLE_TOTAL(shop_Buy_Bean.getBUY_NEW_PRICE()*shop_Buy_Bean.getBUY_NUMBER());
			service.insert(shop_Buy_Bean);
		}else{
			shop_Buy_Bean.setBUY_ID(service.select_name(shop_Buy_Bean.getBUY_NAME()).get(0).getBUY_ID());
			shop_Buy_Bean.setBUY_NUMBER(service.select_name(shop_Buy_Bean.getBUY_NAME()).get(0).getBUY_NUMBER()+shop_Buy_Bean.getBUY_NUMBER());
			shop_Buy_Bean.setBUY_LITTLE_TOTAL(shop_Buy_Bean.getBUY_NEW_PRICE()*shop_Buy_Bean.getBUY_NUMBER());
			
			service.update(shop_Buy_Bean);
		}
		
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
