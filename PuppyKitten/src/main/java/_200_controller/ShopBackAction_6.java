package _200_controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import _200_model.ShopBean;
import _200_model.ShopService;

public class ShopBackAction_6 extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private ShopBean shopbean;
	private String choose = "";

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

	public String getChoose() {
		return choose;
	}

	public void setChoose(String choose) {
		this.choose = choose;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {

		this.request=request;

	}
	
	public String execute(){
		ShopService service =new ShopService();
		ArrayList<ShopBean> list = (ArrayList<ShopBean>) service.select(shopbean);
		request.getSession().setAttribute("list", list);;
		return "success";
	}

}
