package main.java.com.plm.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import main.java.com.plm.dao.TechnologyDao;
import main.java.com.plm.model.KnightedWBSRate;
import main.java.com.plm.model.KnightedWBSTechnology;
import main.java.com.plm.model.Project;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@org.springframework.transaction.annotation.Transactional
public class TechnologyDaoImpl implements TechnologyDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void insertKnightedWBS(KnightedWBSTechnology knightedWBSTechnology) {
		// TODO Auto-generated method stub
		getCurrentSession().save(knightedWBSTechnology);

	}

	@SuppressWarnings("unchecked")
	public List<KnightedWBSTechnology> getKnightedWBS() {
		// TODO Auto-generated method stub

		//To clear the L1 cache
		/*
		 * For the second-level cache, there are methods defined on SessionFactory for evicting the cached state of an instance, entire class, collection instance or entire collection role.

			sessionFactory.evict(Cat.class, catId); //evict a particular Cat
			sessionFactory.evict(Cat.class);  //evict all Cats
			sessionFactory.evictCollection("Cat.kittens", catId); //evict a particular 
            //collection of kittens
			sessionFactory.evictCollection("Cat.kittens"); //evict all kitten collections
		 * */
		sessionFactory.getCache().evictEntityRegion(KnightedWBSTechnology.class);
		
		Query query = getCurrentSession().createQuery("from KnightedWBSTechnology");
		List<KnightedWBSTechnology> knightedWBSList = (List<KnightedWBSTechnology>) query.list();
		return knightedWBSList;
	}
	
	public int updateKnightedWBS(KnightedWBSTechnology knightedWBSTechnology) {
		// TODO Auto-generated method stub
		//This is the proper way to update.
		//Get the Entity object by Id. Modify it, and then save it. Since, we do not have Id, this cannot be done
		/*KnightedWBSTechnology k = (KnightedWBSTechnology)getCurrentSession().get(KnightedWBSTechnology.class, knightedWBSTechnology.getTaskNumber());
		k.setHours(knightedWBSTechnology.getHours());
		getCurrentSession().save(k);
		return k.getKnightedWbsId();
		*/		
				
		Query query = getCurrentSession().createQuery("update KnightedWBSTechnology set HOURS = :hours, TASKNAME = :taskName where TASKNUMBER = :taskNumber");
				query.setParameter("hours", knightedWBSTechnology.getHours());
				query.setParameter("taskNumber", knightedWBSTechnology.getTaskNumber());
				query.setParameter("taskName", knightedWBSTechnology.getTaskName());
				getCurrentSession().clear();
				int result = query.executeUpdate();
				
		return result;
	}
	
	//Knighted Rate methods
	/*
	 * This method queries the database for Knighted Rates
	 * */
	public List<KnightedWBSRate> getKnightedRate() {
		// TODO Auto-generated method stub
		sessionFactory.getCache().evictEntityRegion(KnightedWBSRate.class);
		
		Query query = getCurrentSession().createQuery("from KnightedWBSRate");
		@SuppressWarnings("unchecked")
		List<KnightedWBSRate> knightedWBSRateList = (List<KnightedWBSRate>) query.list();
		return knightedWBSRateList;
	}
	
	/*This method updates the Knighted rates for a given task number
	 * */
	public int insertKnightedRate(KnightedWBSRate knightedWBSRate) {
		// TODO Auto-generated method stub
		
		Query query = getCurrentSession().createQuery("update KnightedWBSRate set RATE = :rate where TASKNUMBER = :taskNumber");
		query.setParameter("rate", knightedWBSRate.getRate());
		query.setParameter("taskNumber", knightedWBSRate.getTaskNumber());
		getCurrentSession().clear();
		int result = query.executeUpdate();
		
		return result;
	}
}
