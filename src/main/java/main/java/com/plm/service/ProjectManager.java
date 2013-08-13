package main.java.com.plm.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import main.java.com.plm.form.Project;

@Service
@Component
public interface ProjectManager {
	void insertProject(Project project);
	Project getProjectById(Integer projectId);
	List<Project> getProjects();
}
