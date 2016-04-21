package _500_model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import _400_model.PetRelationBean;
import hibernate.util.HibernateUtil;

public class MemberDAO implements MemberDAO_interface {
	private static final String GET_BY_ACCOUNT = "from MemberBean where MEM_ACCOUNT=?";

	@Override
	public void insert(MemberBean bean) {
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

	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean> select(String account) {
		List<MemberBean> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery(GET_BY_ACCOUNT);
			query.setParameter(0, account);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	public MemberBean selectMemberBypwdaccount(String account){
		MemberBean memberBean = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query = session
				.createQuery("from MemberBean where MEM_ACCOUNT=:account");

		try {
			if (account != null && !account.isEmpty()) {
				query.setParameter("account", account);
				List<MemberBean> list = query.list();
				memberBean = list.get(0);

			}
		} catch (RuntimeException e) {

		}

		return memberBean;

	}
	

	@SuppressWarnings("unchecked")
	@Override
	public MemberBean selectMemberByAccount(String account) {
		MemberBean memberBean = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query = session
				.createQuery("from MemberBean where MEM_ACCOUNT=:account");

		try {
			if (account != null && !account.isEmpty()) {
				query.setParameter("account", account);
				List<MemberBean> list = query.list();
				memberBean = list.get(0);

			}
		} catch (RuntimeException e) {

		}

		return memberBean;

	}

	@Override
	public void update(MemberBean bean) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(bean);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			session.getTransaction().begin();
			throw e;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public MemberBean selectMemberByMemId(Integer memberId) {
		MemberBean memberBean = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from MemberBean where MEM_ID=?");
			query.setParameter(0, memberId);
			List<MemberBean> memberBeans = query.list();
			if (!memberBeans.isEmpty()) {
				memberBean = memberBeans.get(0);
			}
		} catch (RuntimeException e) {
			throw e;
		}
		return memberBean;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean> selectmember() {
		List<MemberBean> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from MemberBean");
			list = query.list();
		} catch (RuntimeException e) {
			throw e;
		}
		return list;
	}
	
	@Override
	public List<MemberBean> selectId(String MEM_ACCOUNT) {
		List<MemberBean> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();			
			Query query = session.createQuery("from MemberBean where MEM_ACCOUNT=? ");			
			query.setParameter(0, MEM_ACCOUNT);			
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	@Override
	public List<MemberBean> selectId2(Integer MEM_ID) {
		List<MemberBean> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();			
			Query query = session.createQuery("from MemberBean where MEM_ID=? ");			
			query.setParameter(0, MEM_ID);			
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	@Override
	public List<MemberBean> selectBlockade(String MEN_STATUS) {
		List<MemberBean> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();			
			Query query = session.createQuery("from MemberBean where MEN_STATUS=? ");			
			query.setParameter(0, MEN_STATUS);			
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}	
}
