package main.java.com.plm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import main.java.com.plm.form.Project;

@Repository
public interface ProjectDao {
	void insertProject(Project project);
	Project getProjectById(Integer projectId);
	List<Project> getProjects();
}
