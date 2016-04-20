package _200_model;

import java.util.ArrayList;
import java.util.List;

import _300_model.MapBean;

public class ShopService {
	private ShopDAO_interface dao;
	private Shop_Buy_DAO_interface buy_dao;
	private Shop_Order_DAO order_dao;

	public ShopService() {
		dao = new ShopDAO();
		buy_dao = new Shop_Buy_DAO();
		order_dao = new Shop_Order_DAO();
	}

	// -----查詢方法------------------------------------------------------------
	public List<ShopBean> select(ShopBean shopBean) {

		List<ShopBean> result = null;
		if (shopBean == null) {
			result = dao.select_All();
		} else {
			ShopBean temp = dao.selectId(shopBean.getPRO_ID());
			if (temp != null) {
				result = new ArrayList<ShopBean>();
				result.add(temp);
			}
		}
		return result;
	}

	public List<ShopBean> selectShop(ShopBean shopBean) {
		List<ShopBean> result = null;

		String animal = shopBean.getPRO_ANIMAL();
		String kind = shopBean.getPRO_KIND();

		if (animal != null && kind == null) {
			result = dao.select_Product(animal);
		} else if (animal == null && kind == null) {
			result = dao.select_All();
		} else {
			result = dao.select_Product(animal, kind);
		}
		return result;
	}

	public List<Shop_Buy_Bean> select_buy(Shop_Buy_Bean shop_Buy_Bean) {

		List<Shop_Buy_Bean> result = null;
		if (shop_Buy_Bean == null) {
			result = buy_dao.select_all_car();
		} else {
			result = buy_dao.select_my_car(shop_Buy_Bean.getBUY_USER_ID());
		} 
		
//	} else if (shop_Buy_Bean.getBUY_PRO_ID() == null && shop_Buy_Bean.getBUY_USER_ID() != null) {
//		result = buy_dao.select_my_car(shop_Buy_Bean.getBUY_USER_ID());
//	} else {
//		result = buy_dao.select_tempcar_car(shop_Buy_Bean.getBUY_PRO_ID());
//	}
	
		return result;
	}

	public List<Shop_Buy_Bean> select_name(String name) {

		List<Shop_Buy_Bean> result = buy_dao.select_name(name);
		return result;
	}

	public List<Shop_Order_Bean> select(Shop_Order_Bean shop_Order_Bean) {
		List<Shop_Order_Bean> result = null;
		if (shop_Order_Bean == null) {
			result = order_dao.select_all();
		} else {
			result = order_dao.select_order(shop_Order_Bean.getORDER_ID());
		}
		return result;
	}

	// -----新增方法------------------------------------------------------------
	public ShopBean insert(ShopBean bean) {
		dao.insert(bean);
		return bean;
	}

	public Shop_Buy_Bean insert(Shop_Buy_Bean buybean) {
		buy_dao.insert(buybean);
		return buybean;
	}

	public Shop_Order_Bean insert(Shop_Order_Bean orderbean) {
		order_dao.insert(orderbean);
		return orderbean;
	}

	// -----更新方法------------------------------------------------------------
	public ShopBean update(ShopBean bean) {
		dao.update(bean);
		return bean;
	}

	public Shop_Buy_Bean update(Shop_Buy_Bean buybean) {
		buy_dao.update(buybean);
		return buybean;
	}

	// -----刪除方法------------------------------------------------------------
	public int delete(int id) {
		dao.delete(id);
		return id;
	}

	public int delete_car(int id) {
		buy_dao.delete_car(id);
		return id;
	}

	public int delete_order(int id) {
		order_dao.delete(id);
		return id;
	}
}
