package _200_model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import hibernate.util.HibernateUtil;

public class Shop_Buy_DAO implements Shop_Buy_DAO_interface{

	private static final String SELECT_NAME = "from Shop_Buy_Bean where BUY_NAME=?";
	private static final String SELECT_MY_CAR = "from Shop_Buy_Bean where BUY_USER_ID=? order by BUY_PRO_ID";
	private static final String SELECT_ALL_CAR = "from Shop_Buy_Bean order by BUY_ID";


	@Override
	public List<Shop_Buy_Bean> select_all_car() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Shop_Buy_Bean> list;
		try {
			session.beginTransaction();
			Query query = session.createQuery(SELECT_ALL_CAR);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	

	@Override
	public List<Shop_Buy_Bean> select_my_car(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Shop_Buy_Bean> list;
		try {
			session.beginTransaction();
			Query query = session.createQuery(SELECT_MY_CAR);
			query.setParameter(0, id);
			list = query.list();
			
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	@Override
	public List<Shop_Buy_Bean> select_name(String name) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Shop_Buy_Bean> list;
		try {
			session.beginTransaction();
			Query query = session.createQuery(SELECT_NAME);
			query.setParameter(0, name);
			list = query.list();
			
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

	/* (non-Javadoc)
	 * @see _200_model.Shop_Buy_DAO_interface#insert(_200_model.Shop_Buy_Bean)
	 */
	@Override
	public void insert(Shop_Buy_Bean bean) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.save(bean);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	
	public void update(Shop_Buy_Bean bean) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.update(bean);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}
	/* (non-Javadoc)
	 * @see _200_model.Shop_Buy_DAO_interface#delete(int)
	 */
	@Override
	public void delete_car(int buy_id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Shop_Buy_Bean bean = session.get(Shop_Buy_Bean.class, buy_id);
			if (bean != null) {
				session.delete(bean);
			}
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

}
