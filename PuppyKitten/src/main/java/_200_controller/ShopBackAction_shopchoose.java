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
	private ShopBean shopbean=new ShopBean();
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
		Integer id=shop_Buy_Bean.getBUY_PRO_ID();
		shopbean.setPRO_ID(id);
		List<ShopBean> list=service.select(shopbean);
		setShopbean(list.get(0));
		//優惠方案
		int buy1;
		int buy2;
		int buys1; //買幾組
		int buys2; //買幾個
		int free;
		int oldbuy = 0;
		if(list.get(0).getPRO_PROJECT().equals("指定價格")){
			//指定價格金額小計
			if(service.select_name(shop_Buy_Bean.getBUY_NAME()).isEmpty()){
				shop_Buy_Bean.setBUY_LITTLE_TOTAL(shop_Buy_Bean.getBUY_OLD_PRICE()*shop_Buy_Bean.getBUY_NUMBER());
				shop_Buy_Bean.setBUY_NEW_PRICE(shop_Buy_Bean.getBUY_OLD_PRICE()*shop_Buy_Bean.getBUY_NUMBER());
				shop_Buy_Bean.setBUY_PROJECT(shopbean.getPRO_PROJECT());
				if(shopbean.getPRO_STOCK()-shop_Buy_Bean.getBUY_NUMBER()<0){
					addFieldError("number", "不好意思,目前庫存數量不夠");
					return INPUT;
				}
				//更新庫存數量
				shopbean.setPRO_STOCK(shopbean.getPRO_STOCK()+oldbuy-shop_Buy_Bean.getBUY_NUMBER());
				service.update(shopbean);
				service.insert(shop_Buy_Bean);
			}else{
				Shop_Buy_Bean bean = service.select_name(shop_Buy_Bean.getBUY_NAME()).get(0); //以前在購物車裡面的這筆商品
				shop_Buy_Bean.setBUY_ID(bean.getBUY_ID());
				System.out.println("之前購物車的數量:"+bean.getBUY_NUMBER());
				System.out.println("剛加入購物車的數量:"+shop_Buy_Bean.getBUY_NUMBER());
				System.out.println("所以現在數量應該是:"+(bean.getBUY_NUMBER()+shop_Buy_Bean.getBUY_NUMBER()));
				System.out.println("庫存數量:"+shopbean.getPRO_STOCK());
				System.out.println("那現在的庫存數量就應該是:"+(shopbean.getPRO_STOCK()-shop_Buy_Bean.getBUY_NUMBER()));
				if(shopbean.getPRO_STOCK()-shop_Buy_Bean.getBUY_NUMBER()<0){
					addFieldError("number", "不好意思,目前庫存數量不夠");
					return INPUT;
				}
				//更新庫存數量
				shopbean.setPRO_STOCK(shopbean.getPRO_STOCK()+oldbuy-shop_Buy_Bean.getBUY_NUMBER());
				service.update(shopbean);
				shop_Buy_Bean.setBUY_NUMBER(bean.getBUY_NUMBER()+shop_Buy_Bean.getBUY_NUMBER());
				shop_Buy_Bean.setBUY_NEW_PRICE(shop_Buy_Bean.getBUY_NUMBER()*shop_Buy_Bean.getBUY_OLD_PRICE());
				shop_Buy_Bean.setBUY_LITTLE_TOTAL(shop_Buy_Bean.getBUY_NEW_PRICE());
				shop_Buy_Bean.setBUY_PROJECT(shopbean.getPRO_PROJECT());
				service.update(shop_Buy_Bean);
			}
	}else{
			buy1=list.get(0).getPRO_BUY1();   //優惠買幾
			buy2=list.get(0).getPRO_BUY2();	  //優惠送幾
			buys1=shop_Buy_Bean.getBUY_NUMBER()/buy1; //買幾組
			free=buys1*buy2;                          //送幾個
			//買幾送幾金額小計
			if(service.select_name(shop_Buy_Bean.getBUY_NAME()).isEmpty()){
				shop_Buy_Bean.setBUY_NEW_PRICE(shop_Buy_Bean.getBUY_NUMBER()*shop_Buy_Bean.getBUY_OLD_PRICE()); //優惠價格
				shop_Buy_Bean.setBUY_NUMBER(shop_Buy_Bean.getBUY_NUMBER()+free);  //買跟送的總數量
				shop_Buy_Bean.setBUY_LITTLE_TOTAL(shop_Buy_Bean.getBUY_NEW_PRICE());
				shop_Buy_Bean.setBUY_PROJECT(shopbean.getPRO_PROJECT());
				if(shopbean.getPRO_STOCK()-shop_Buy_Bean.getBUY_NUMBER()<0){
					addFieldError("number", "不好意思,目前庫存數量不夠");
					return INPUT;
				}
				//更新庫存數量
				shopbean.setPRO_STOCK(shopbean.getPRO_STOCK()+oldbuy-shop_Buy_Bean.getBUY_NUMBER());
				service.update(shopbean);
				service.insert(shop_Buy_Bean);
			}else{	
				Shop_Buy_Bean bean = service.select_name(shop_Buy_Bean.getBUY_NAME()).get(0); 
				shop_Buy_Bean.setBUY_ID(bean.getBUY_ID()); //查詢購物車裡面這筆商品的資料
				oldbuy=bean.getBUY_NUMBER(); //當初買與送的商品總數
				System.out.println("當初買與送的商品總數"+oldbuy);
				int buys=bean.getBUY_NUMBER()-(bean.getBUY_NUMBER()/(buy1+buy2))*buy2; //當初買的商品數量
				System.out.println("當初買的商品數量:"+buys);
				buys1=(shop_Buy_Bean.getBUY_NUMBER()+buys)/buy1; //現在總共買幾個
				System.out.println("現在總共買幾個:"+buys1);
				free = buys1*buy2;  //現在總共送幾個
				System.out.println("現在總共送幾個:"+free);
				shop_Buy_Bean.setBUY_NUMBER(shop_Buy_Bean.getBUY_NUMBER()+buys+free); //現在買跟送的總數量
				System.out.println("現在買跟送的總數量:"+shop_Buy_Bean.getBUY_NUMBER());
				shop_Buy_Bean.setBUY_NEW_PRICE((shop_Buy_Bean.getBUY_NUMBER()-free)*shop_Buy_Bean.getBUY_OLD_PRICE()); //優惠價格
				shop_Buy_Bean.setBUY_LITTLE_TOTAL(shop_Buy_Bean.getBUY_NEW_PRICE());
				shop_Buy_Bean.setBUY_PROJECT(shopbean.getPRO_PROJECT());
				if(shopbean.getPRO_STOCK()+oldbuy-shop_Buy_Bean.getBUY_NUMBER()<0){
					addFieldError("number", "不好意思,目前庫存數量不夠");
					return INPUT;
				}
				//更新庫存數量
				shopbean.setPRO_STOCK(shopbean.getPRO_STOCK()+oldbuy-shop_Buy_Bean.getBUY_NUMBER());
				service.update(shopbean);
				service.update(shop_Buy_Bean);
			}
		}
		


		
		
		//金額總和
		List<Shop_Buy_Bean> shop_Buy_list = service.select_buy(shop_Buy_Bean);
		request.getSession().setAttribute("shop_Buy_list", shop_Buy_list);
		Integer total=0;
		for(Shop_Buy_Bean bean : shop_Buy_list){
			total+=bean.getBUY_LITTLE_TOTAL();
		}
		request.getSession().setAttribute("total", total);
		
		
		//更新所有商品的頁面
		shopbean=null;
		List<ShopBean> select_list = service.select(shopbean);
		request.getSession().setAttribute("select_list", select_list);
		
		return "success";
	}

}
