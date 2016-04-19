package _200_model;

import java.util.List;

public interface Shop_Buy_DAO_interface {

	public List<Shop_Buy_Bean> select_all_car();

	public List<Shop_Buy_Bean> select_my_car(int id);
	
	public List<Shop_Buy_Bean> select_tempcar_car(int id);

	public void insert(Shop_Buy_Bean bean);
	
	public void update(Shop_Buy_Bean bean);

	public void delete_car(int buy_id);

	public List<Shop_Buy_Bean> select_name(String name);

}