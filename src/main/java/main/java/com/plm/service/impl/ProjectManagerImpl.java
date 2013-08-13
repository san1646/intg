package main.java.com.plm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import main.java.com.plm.dao.ProjectDao;
import main.java.com.plm.form.Contact;
import main.java.com.plm.form.Project;
import main.java.com.plm.service.ProjectManager;

@Service
@Component
public class ProjectManagerImpl implements ProjectManager{

	@Autowired
	private ProjectDao projectDao;
	
	@Autowired
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
            this.jdbcTemplate = jdbcTemplate;
    }
    /*
     * public void addStudent(Registration registration) {
                try {
                        String sql = "INSERT INTO student(name,course,age,address) values(?,?,?,?)";
                        jdbcTemplate.update(sql, new Object[] { registration.getName(),
                                        registration.getCourse(), registration.getAge(),
                                        registration.getAddress() });
                } catch (Exception e) {
                        System.out.println(e.getMessage());
                        e.printStackTrace();
                }
        }
     * 
     * 
     * */
    
    public void addContact(Contact contact) {
    	try {
            String sql = "INSERT INTO contacts(name,course,age,address) values(?,?,?,?)";
            String sql2 = "INSERT INTO 'PLM'.'CONTACTS' (ID, FIRSTNAME, LASTNAME, TELEPHONE, EMAIL, CREATED) VALUES ('3', 'sad', 'das', '1233', 'sa@sd', TO_TIMESTAMP('06-AUG-13 12.00.46.768000000 PM', 'DD-MON-RR HH.MI.SSXFF AM'))";
            
            /*INSERT INTO "PLM"."CONTACTS" (ID, FIRSTNAME, LASTNAME, TELEPHONE, EMAIL, CREATED) 
             * VALUES ('3', 'sad', 'das', '1233', 'sa@sd', TO_TIMESTAMP('06-AUG-13 12.00.46.768000000 PM', 'DD-MON-RR HH.MI.SSXFF AM'))*/
            //jdbcTemplate.update(sql, new Object[] { contact.getFirstname() });
            jdbcTemplate.update(sql2);
    } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
    }
		
	}
	@Transactional
	public Project getProjectById(Integer projectId) {
		// TODO Auto-generated method stub
		return projectDao.getProjectById(projectId);
	}

	@Transactional
	public List<Project> getProjects() {
		// TODO Auto-generated method stub
		return projectDao.getProjects();
	}
	
	@org.springframework.transaction.annotation.Transactional
	public void insertProject(Project project) {
		// TODO Auto-generated method stub
		projectDao.insertProject(project);		
	}
	
}
