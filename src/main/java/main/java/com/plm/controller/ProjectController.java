package main.java.com.plm.controller;

import java.io.InputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.com.plm.model.CustomerType;
import main.java.com.plm.model.Project;
import main.java.com.plm.service.CustomerTypeService;
import main.java.com.plm.service.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the create project requests.
 */
@Controller
@Scope("request")
public class ProjectController {
	static org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(HomeController.class.getName());
	@Autowired
    private ProjectService projectService;
	
	/*@Autowired
	private Project project;*/
	
	@Autowired
    private CustomerTypeService customerTypeService;

	@RequestMapping(value = "/createProject{editProjectId}", method = { RequestMethod.GET })
	public String home(final HttpServletRequest request,
            final HttpServletResponse response, Map<String, Object> model, HttpSession session, 
            @RequestParam(value="editProjectId", required = false) String editProjectId) {
		log.info("***ProjectController: Creating new project...");
		
		MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
		String version = resources.getMessage("curr_version", null, "v0.1.1", null);
		String year = resources.getMessage("curr_year", null, "2013", null);
		String app_name = resources.getMessage("app_name", null, "PLM", null);
		String username = session.getAttribute("username").toString();
		model.put("username", username);
		
		//This is when Edit link on the Home screen is clicked,
	 	//It passes the ProjectId in the session attr editProjectId
	 	session.setAttribute("editProjectId", editProjectId);
	 	
		model.put("app_name", app_name);
		 model.put("version", version);
		 model.put("year", year);
		 
		return "createProject";
	}
	
	@RequestMapping(value = "/project", method = { RequestMethod.GET })
	public String projectHome(final HttpServletRequest request,
            final HttpServletResponse response, Model model, HttpSession session) {
		log.info("***ProjectController: Creating new project...");
		
		MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
		String version = resources.getMessage("curr_version", null, "v0.1.1", null);
		String year = resources.getMessage("curr_year", null, "2013", null);
		String app_name = resources.getMessage("app_name", null, "PLM", null);
		
		 model.addAttribute("app_name", app_name);
		 model.addAttribute("version", version);
		 model.addAttribute("year", year);
		 
		 List<Project> projectList = projectService.getProjects();
		 
		 //Project project = new Project(); 
		 
		 
		//This is for the @RequestParam attr
			//If not null, Set it to model
			//if null, ignore
		 Object editProjectId = session.getAttribute("editProjectId");
			if(editProjectId!=null){
		 		model.addAttribute("editProjectId",
		 				editProjectId.toString()+"test");
		 		
		 		//Once we get the Project number, we set it to the session attribute, 'editProject'
		 		//This has the advantage of re-using the rest of the flow down here.
		 		//Now, the rest flow is exactly same as 'edit' button in the 'Find Project' functionality
		 		
		 		session.setAttribute("editProject", 
		 				projectService.getProjectById(Integer.parseInt( editProjectId.toString() )));
		 	}
			
		 /*This is to persist the Project object to the database
			 * When user clicks home screen, object is saved. 
			 * Until then, it is persisted in the Session
			 * 
			 * Edit project - Find project redirects here. editProject is the Project passed for editing
			 * If it is present, edit it.
			 * else, get the current project from the session*/
		 
		 		
			Object editProject = session.getAttribute("editProject");
			Project sessionProject = null;
			try{
			sessionProject = (Project) editProject;
			}catch (java.lang.ClassCastException cce) {
				// TODO: handle exception
				log.error("java.lang.String cannot be cast to main.java.com.plm.model.Project here at the sessionProject casting site");
			}
			
			
			
			if(sessionProject==null){
			Object currentProject = session.getAttribute("currentProject");
			sessionProject = (Project) currentProject;
			}
			 if(sessionProject!=null) {
				   				  
				   //Project object is set to default Department and Customer
				   //This has to dynamically set from the session
				   model.addAttribute("projectId", sessionProject.getProjectId());
				  } else {
					  sessionProject = new Project();
					  sessionProject.setDepartmentId("100");
					  sessionProject.setCustomerId("100");
				      Integer projectId = projectService.insertProject(sessionProject);
				      sessionProject.setProjectId(projectId);
				      session.setAttribute("currentProject", sessionProject);
				      model.addAttribute("projectId", projectId);
				  }
			//Integer projectId = projectService.insertProject(project);
			 
		//Validation
		 
		 
		 //Saving to the Database
		 //Integer projectId = projectService.insertProject(project);
		 
		 //
		 //Setting the project object in the session.
		 //It will be used till the user is logged in for any modifications
		 //session.setAttribute("currentProject", project);
		 
		 //Adding the projectId in the model, to pass to the View
		 //model.put("projectId", projectId);
		 /*DropDown*/
		 if(!projectList.isEmpty()){
			 log.info("***ProjectController: projectList..."+projectList);
			model.addAttribute("defaultProject", projectList.get(0));
		 }
		 else {
			 model.addAttribute("defaultProject", sessionProject);
		}
		 /*DropDown*/
		 /* CustomerType*/
		 
		 List<CustomerType> customerTypes = customerTypeService.getCustomerType();
		 Map< Integer, String > customerTypesMap = new LinkedHashMap<Integer, String>();

		 for (CustomerType i : customerTypes) customerTypesMap.put(i.getCustomerTypeId(),i.getCustomerTypeDescription());
		 
		 
		 if(!customerTypes.isEmpty()){
			 log.info("***Adding customerTypes in to the Model.");
				model.addAttribute("customerTypesMap", customerTypesMap);
		 }else{
			 log.info("***Adding default customerTypes in to the Model.");
			 customerTypesMap.put(0,"Default");
			 model.addAttribute("customerTypesMap", customerTypesMap);
		 }
		 
		 /*CustomerType*/
		 
		return "project";
	}
	@RequestMapping(value = "/save")
	public String save(final HttpServletRequest request,
            final HttpServletResponse response, Map<String, Object> model){
		log.info("***ProjectController: Saving new project...");
		
		MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
		String version = resources.getMessage("curr_version", null, "v0.1.1", null);
		String year = resources.getMessage("curr_year", null, "2013", null);
		
		 model.put("version", version);
		 model.put("year", year);
		 
		return "save";
	}
	
	//findproject
	@RequestMapping(value = "/findprojectresult", method = { RequestMethod.POST })
	public String findProject(@ModelAttribute("project") Project project, final HttpServletRequest request,
            final HttpServletResponse response, Model model, HttpSession session){
		log.info("***ProjectController: Saving new project...");
		
		MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
		String version = resources.getMessage("curr_version", null, "v0.1.1", null);
		String year = resources.getMessage("curr_year", null, "2013", null);
		
		 model.addAttribute("version", version);
		 model.addAttribute("year", year);
		 
		 //Find a Project
		 //Project project = projectService.getProjectById();
		 session.setAttribute("editProject", project);
		return "redirect:/createProject";
	}
	
	//findproject
		@RequestMapping(value = "/findproject", method = { RequestMethod.POST })
		public String findProjectPOST(@ModelAttribute("project") Project project, BindingResult result, Model model){
			log.info("***ProjectController: Saving new project...");
			
			MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
			String jquerystyle = resources.getMessage("jquerystyle", null, "yoyo", null);
			model.addAttribute("jquerystyle", jquerystyle);
			            
			Project projectResult = projectService.getProjectById(project.getProjectId());
			 //model.addAttribute("project", project);
			if(projectResult!=null){
				model.addAttribute("projectResult",projectResult);
				model.addAttribute("message", "Successfully found project");
			}
			else{
				model.addAttribute("projectResult",new Project());
				model.addAttribute("message", "Project not found.");
				}
			
			
			 
			return "findProjectResult";
		}
		
		//findproject
				@RequestMapping(value = "/findproject", method = { RequestMethod.GET })
				public String findProjectGET(Model model, HttpSession session){
					log.info("***ProjectController: Saving new project...");
					
					MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
					String jquerystyle = resources.getMessage("jquerystyle", null, "yoyo", null);
					model.addAttribute("jquerystyle", jquerystyle);
					            
					String username = session.getAttribute("username").toString();
					model.addAttribute("username", username);
					
					//Project projectResult = projectService.getProjectById(project.getProjectId());
					 //model.addAttribute("project", project);
					/*if(projectResult!=null){
						model.addAttribute("projectResult",projectResult);
						model.addAttribute("message", "Successfully found project");
					}*/
					/*else{
						model.addAttribute("projectResult",new Project());
						model.addAttribute("message", "Project not found.");
						}
					*/
					model.addAttribute("project",new Project());
					 
					return "findProject";
				}
}