package poly.phunglv.dao;

import javax.persistence.EntityManager;

import poly.phunglv.utils.XJPA;



public class QueryDAO {
	EntityManager em = XJPA.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}
	/*
	public static void Query1() {
		try {
			em.getTransaction().begin();						
			
			em.getTransaction().commit();		
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	*/
}