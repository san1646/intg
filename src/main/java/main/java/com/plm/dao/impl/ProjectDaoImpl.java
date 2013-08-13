package main.java.com.plm.dao.impl;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.com.plm.dao.ProjectDao;
import main.java.com.plm.form.Project;

@Service
public class ProjectDaoImpl implements ProjectDao{

	/*@Autowired
	private SessionFactory sessionFactory;*/
	
	
	public Project getProjectById(Integer projectId) {
		// TODO Auto-generated method stub
		return null;
		/*(Project) sessionFactory.
			      getCurrentSession().
			      get(Project.class, projectId);*/
	}
	
	public void insertProject(Project project) {
		// TODO Auto-generated method stub
		/*sessionFactory.getCurrentSession().save(project);*/
	}
	
	@SuppressWarnings("unchecked")
	public List<Project> getProjects() {
		// TODO Auto-generated method stub
		/*Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Project.class);
		return criteria.list();*/
		return null;
	}
	
}
