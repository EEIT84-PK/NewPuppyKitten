package _200_model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import hibernate.util.HibernateUtil;

public class Shop_Order_DAO implements Shop_Order_DAO_interface {

	private static final String SELECT_ORDER_ALL = "from shop_order_bean order by ORDER_ID ";
	private static final String SELECT_ORDER_USER = "from shop_order_bean where ORDER_USER_ID=? order by ORDER_ID";
	private static final String SELECT_ORDER_ID = "from shop_order_bean where order by ORDER_ID=?";

	/* (non-Javadoc)
	 * @see _200_model.Shop_Order_DAO_interface#select_all()
	 */
	@Override
	public List<Shop_Order_Bean> select_all() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Shop_Order_Bean> list;
		try {
			session.beginTransaction();
			Query query = session.createQuery(SELECT_ORDER_ALL);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

	/* (non-Javadoc)
	 * @see _200_model.Shop_Order_DAO_interface#select_user(int)
	 */
	@Override
	public List<Shop_Order_Bean> select_user(int userid) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Shop_Order_Bean> list;
		try {
			session.beginTransaction();
			Query query = session.createQuery(SELECT_ORDER_USER);
			query.setParameter(0, userid);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

	/* (non-Javadoc)
	 * @see _200_model.Shop_Order_DAO_interface#select_order(int)
	 */
	@Override
	public List<Shop_Order_Bean> select_order(int orderid) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Shop_Order_Bean> list;
		try {
			session.beginTransaction();
			Query query = session.createQuery(SELECT_ORDER_ID);
			query.setParameter(0, orderid);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

	/* (non-Javadoc)
	 * @see _200_model.Shop_Order_DAO_interface#delete(int)
	 */
	@Override
	public void delete(int orderid) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Shop_Order_Bean bean = session.get(Shop_Order_Bean.class, orderid);
			if (bean != null) {
				session.delete(bean);
			}
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	/* (non-Javadoc)
	 * @see _200_model.Shop_Order_DAO_interface#insert(_200_model.Shop_Order_Bean)
	 */
	@Override
	public void insert(Shop_Order_Bean bean) {
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
}
