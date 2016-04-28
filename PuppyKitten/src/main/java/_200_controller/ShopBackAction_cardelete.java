package _200_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;
import _200_model.Shop_Buy_Bean;
import _500_model.MemberBean;


public class ShopBackAction_cardelete extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private Shop_Buy_Bean shop_Buy_Bean;
	private ShopBean shopBean;
	private MemberBean memberbean;

	public MemberBean getMemberbean() {
		return memberbean;
	}

	public void setMemberbean(MemberBean memberbean) {
		this.memberbean = memberbean;
	}

	public ShopBean getShopBean() {
		return shopBean;
	}

	public void setShopBean(ShopBean shopBean) {
		this.shopBean = shopBean;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

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
		
		//刪除購物車的項目
		System.out.println("購物車的ID:"+shop_Buy_Bean.getBUY_ID());
		service.delete_car(shop_Buy_Bean.getBUY_ID());
		System.out.println("刪除成功");
		
		//取得這筆商品的資料
		System.out.println("商品的ID:"+shopBean.getPRO_ID());
		List<ShopBean> list=service.select(shopBean);
		System.out.println("商品查詢成功");
		//把購物車數量加回商品的庫存數量
		setShopBean(list.get(0));
		shopBean.setPRO_STOCK(list.get(0).getPRO_STOCK()+shop_Buy_Bean.getBUY_NUMBER());
		service.update(shopBean);
		
		//查詢剩餘購物車項目
		List<Shop_Buy_Bean> shop_Buy_list = service.select_buy(shop_Buy_Bean);
		request.getSession().setAttribute("shop_Buy_list", shop_Buy_list);
		
		//重新計算總金額
		Integer total=0;
		for(Shop_Buy_Bean bean : shop_Buy_list){
			total+=bean.getBUY_LITTLE_TOTAL();
		}
		request.getSession().setAttribute("total", total);
		
		
		return "success";
	}

}
