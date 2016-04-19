package _200_controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;
import _200_model.Shop_Buy_Bean;
import _200_model.Shop_Order_Bean;
import _500_model.MemberBean;

public class ShopBackAction_ordersend extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private ShopBean shopBean;
	private MemberBean memberBean;
	private Shop_Buy_Bean shop_Buy_Bean;
	private Shop_Order_Bean shop_Order_Bean;

	public ShopBean getShopBean() {
		return shopBean;
	}

	public void setShopBean(ShopBean shopBean) {
		this.shopBean = shopBean;
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

	public Shop_Order_Bean getShop_Order_Bean() {
		return shop_Order_Bean;
	}

	public void setShop_Order_Bean(Shop_Order_Bean shop_Order_Bean) {
		this.shop_Order_Bean = shop_Order_Bean;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void validate() {

	}

	public String execute() {
		ShopService service = new ShopService();

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String buydate = sdf.format(date);

		shop_Order_Bean.setORDER_DATE(buydate);
		service.insert(shop_Order_Bean);
		// 當下訂購時間
		List<Shop_Buy_Bean> list = service.select_buy(shop_Buy_Bean);
		for (int i = 0; i < list.size(); i++) {
			service.delete_car(list.get(i).getBUY_ID());
		}
//		List<ShopBean> bean = service.select(shopBean);
//
//		for (int n = 0; n <= bean.size(); n++) {
//
// 			System.out.println(bean.get(n).getPRO_ID());//2012
// 			System.out.println(bean.get(n).getPRO_STOCK());//100
// 			
//			shop_Buy_Bean.setBUY_PRO_ID(bean.get(n).getPRO_ID());  //2012
//			
//			List<Shop_Buy_Bean> num = service.select_buy(shop_Buy_Bean);
//			
//			System.out.println(num);
//			
//			Integer buynumber = num.get(0).getBUY_NUMBER();
//
//			shopBean.setPRO_STOCK(bean.get(n).getPRO_STOCK() - buynumber);
//
//			service.update(shopBean);
//		}

		return "success";
	}

}
