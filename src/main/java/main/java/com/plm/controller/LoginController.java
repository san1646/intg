package main.java.com.plm.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.com.plm.model.Project;
import main.java.com.plm.service.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	 static org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(HomeController.class.getName());
	 
	 @Autowired
	 private ProjectService projectService;

		@RequestMapping(value = "/login", method = { RequestMethod.GET })
		public String login(final HttpServletRequest request,
	            final HttpServletResponse response, Map<String, Object> model) {
			
			 log.info("***Request object received for method "
	                + request.getMethod());
			MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
			String version = resources.getMessage("curr_version", null, "v0.1.1", null);
			String year = resources.getMessage("curr_year", null, "2013", null);
			String app_name = resources.getMessage("app_name", null, "PLM", null);
			
			 model.put("app_name", app_name);
			 model.put("version", version);
			 model.put("year", year);
			  //System.out.println("HomeController: Passing through...");
			  log.info("***LoginController: Passing through...");
			  log.info("***response content type is not set : "
		                + response.getContentType());
			  
			return "login";
		}
		
		@RequestMapping(value="/welcome", method = RequestMethod.GET)
		public String printWelcome(ModelMap model, Principal principal, HttpSession session ) {
	 
			String name = principal.getName();
			model.addAttribute("username", "Welcome "+name);
			session.setAttribute("username", name);
			//model.addAttribute("message", "Spring Security Custom Form example");
			
			MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
			String version = resources.getMessage("curr_version", null, "v0.1.1", null);
			String year = resources.getMessage("curr_year", null, "2013", null);
			String app_name = resources.getMessage("app_name", null, "PLM", null);
			
			//To list all the projects
			List<Project> projects = new ArrayList<Project>();
			projects = projectService.getProjects();
			
			model.put("projects", projects);
			
			model.put("app_name", app_name);
			 model.put("version", version);
			 model.put("year", year);
			 
			/*return "decorator/root";*/
			 return "home";
		}
		
		@RequestMapping(value="/welcome", method = RequestMethod.POST)
		public String forwardWelcome(ModelMap model) {
	 
			String message = (String)model.get("message");
			message += " Login ";
			log.info(message);
			
			MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
			String version = resources.getMessage("curr_version", null, "v0.1.1", null);
			String year = resources.getMessage("curr_year", null, "2013", null);
			String app_name = resources.getMessage("app_name", null, "PLM", null);
			
			model.put("app_name", app_name);
			model.put("version", version);
			model.put("year", year);
			model.addAttribute("message", message);
			 
			/*return "decorator/root";*/
			 return "home";
		}
		
		@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
		public String loginerror(ModelMap model) {
	 
			model.addAttribute("error", "true");
			return "login";
	 
		}
	 
		@RequestMapping(value="/logout", method = RequestMethod.GET)
		public String logout(ModelMap model) {
	 
			return "login";
	 
		}
}
