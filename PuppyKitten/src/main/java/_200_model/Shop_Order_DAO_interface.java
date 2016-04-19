package _200_model;

import java.util.List;

public interface Shop_Order_DAO_interface {

	public List<Shop_Order_Bean> select_all();

	public List<Shop_Order_Bean> select_user(int userid);

	public List<Shop_Order_Bean> select_order(int orderid);

	public void delete(int orderid);

	public void insert(Shop_Order_Bean bean);

}