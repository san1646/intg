package main.java.com.plm.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.com.plm.form.KnightedWBSRateForm;
import main.java.com.plm.form.KnightedWBSTechnologyForm;
import main.java.com.plm.model.KnightedWBSRate;
import main.java.com.plm.model.KnightedWBSTechnology;
import main.java.com.plm.model.Project;
import main.java.com.plm.service.ContactService;
import main.java.com.plm.service.TechnologyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the create, add technology requests.
 */
@Controller
public class TechnologyController {
	static org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(HomeController.class.getName());
	@Autowired
    private TechnologyService technologyService;
	
	@Autowired
	private Project project;

	@RequestMapping(value = "/technology", method = { RequestMethod.GET })
	public String technology(final HttpServletRequest request,
            final HttpServletResponse response, Model model) {
		log.info("***TechnologyController: Adding Technology...");
		
		MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
		String version = resources.getMessage("curr_version", null, "v0.1.1", null);
		String year = resources.getMessage("curr_year", null, "2013", null);
String app_name = resources.getMessage("app_name", null, "PLM", null);
		
		model.addAttribute("app_name", app_name);
		 model.addAttribute("version", version);
		 model.addAttribute("year", year);
		 
		 /*KnightedWBSTechnology object added to the model.
		  * It will be used when the form is submitted
		  * and flow returns to the method submitKnightedWBS() */
		 List<KnightedWBSTechnology> knightedWBSTechnologyList = new ArrayList<KnightedWBSTechnology>();
		 //knightedWBSTechnologyList.add(new KnightedWBSTechnology(new Integer(60),"60.1","55"));//hardcoded as of now...
		 knightedWBSTechnologyList = technologyService.getKnightedWBS();
		 //Loop to add KnightedWBSTechnology objects. Number of objects depends on the form size.
		/* for (int i = 0; i < 100; i++) {
			 knightedWBSTechnologyList.add(new KnightedWBSTechnology());
		}*/
		 
		 KnightedWBSTechnologyForm knightedForm = new KnightedWBSTechnologyForm();
		 knightedForm.setKnightedWBSTechnology(knightedWBSTechnologyList);
		 model.addAttribute("knightedWBSTechnologyForm" , knightedForm);
		 model.addAttribute("totalHours60" , getTotalHours("60."));
		 model.addAttribute("totalHours61" , getTotalHours("61."));
		 model.addAttribute("totalHours62" , getTotalHours("62."));
		 model.addAttribute("totalHours63" , getTotalHours("63."));
		 System.out.println(knightedForm.getKnightedWBSTechnologies());
		 
		return "createTechnology";
	}
	
	@RequestMapping(value = "/techsave")
	public String save(final HttpServletRequest request,
            final HttpServletResponse response, Map<String, Object> model){
		log.info("***TechnologyController: Adding Technology...");
		
		MessageSource resources = new ClassPathXmlApplicationContext("beans.xml");
		String version = resources.getMessage("curr_version", null, "v0.1.1", null);
		String year = resources.getMessage("curr_year", null, "2013", null);
		
		 model.put("version", version);
		 model.put("year", year);
		 
		return "save";
	}

	@RequestMapping(value = "/loadknighted", method = RequestMethod.GET)
	public String loadKnightedWBS(final HttpServletRequest request,
            					  final HttpServletResponse response, 
            					  Model model){
		log.info("***TechnologyController: knightedWBSSave...");
		 model.addAttribute("knightedWBSTechnology" , new KnightedWBSTechnology());
		 return "technology";
	}
	
	@RequestMapping(value = "/saveknighted", method = RequestMethod.POST)
	public String saveKnightedWBS(final HttpServletRequest request,
            					  final HttpServletResponse response, 
            					  Model model, @ModelAttribute KnightedWBSTechnology knightedWBSTechnology){
		log.info("***TechnologyController: knightedWBSSave...");
		
		 /*Save the Knighted WBS object*/
		 //KnightedWBSTechnology knightedWBSTechnology = new KnightedWBSTechnology();
		if(knightedWBSTechnology==null){
		 knightedWBSTechnology = new KnightedWBSTechnology();
		 knightedWBSTechnology.setTaskNumber("60.1");
		 knightedWBSTechnology.setHours("555");
		}
		 /*Call the Service method*/
		 technologyService.insertKnightedWBS(knightedWBSTechnology);
		 log.info("***Knighted WBS inserted!");
		 model.addAttribute("message", "Successfully saved WBS: ");
		 return "technology";
	}
	
	
	
	@RequestMapping(value = "/technology", method=RequestMethod.POST)
	public String submitKnightedWBS(@ModelAttribute("knightedWBSTechnologyForm") KnightedWBSTechnologyForm knightedWBSTechnologyForm ,
									BindingResult result, Model model, HttpSession session){
		
		List<KnightedWBSTechnology> knightedWBSFormList = new ArrayList<KnightedWBSTechnology>();
		if(knightedWBSTechnologyForm!=null){
		knightedWBSFormList = knightedWBSTechnologyForm.getKnightedWBSTechnologies();
		}
		
		Object editProject = session.getAttribute("editProject");
		Project sessionProject = (Project) editProject;
		if(sessionProject==null){
		Object currentProject = session.getAttribute("currentProject");
		sessionProject = (Project) currentProject;
		}
		
		System.out.println(" taskNumber entered "+ knightedWBSFormList.get(0).getTaskNumber());
		log.info("***TechnologyController: (ajax) submitKnightedWBS...");
		
		//Set<KnightedWBSTechnology> knightedWBSSet = new HashSet<KnightedWBSTechnology>(technologyService.getKnightedWBS());
		List<KnightedWBSTechnology> knightedWBSTechnologyListDb = new ArrayList<KnightedWBSTechnology>();
		knightedWBSTechnologyListDb = technologyService.getKnightedWBS();
		
		
		
		HashMap <String, String> hashMapKnightedWBSDb = new HashMap<String, String>();
		HashMap <String, String> hashMapKnightedWBSForm = new HashMap<String, String>();		
		
		for (KnightedWBSTechnology i : knightedWBSFormList) hashMapKnightedWBSForm.put(i.getTaskNumber(),i.getHours());
		for (KnightedWBSTechnology i : knightedWBSTechnologyListDb) hashMapKnightedWBSDb.put(i.getTaskNumber(),i.getHours());

		/*final Map<String, String> comparisonResult =
		        compareEntries(hashMapKnightedWBSDb, hashMapKnightedWBSForm);
		    for(final Entry<String, String> entry : comparisonResult.entrySet()){
		        KnightedWBSTechnology k = new KnightedWBSTechnology();
		        k.setTaskNumber(entry.getKey().replace(",", ""));
		        k.setHours(entry.getValue());
		        
		        if(k.getHours().isEmpty()){
					k.setHours("0");
				}
		        if(k!=null){technologyService.insertKnightedWBS(k);}
		    }*/
		
		for (Iterator iterator = knightedWBSFormList.iterator(); iterator
				.hasNext();) {
			KnightedWBSTechnology knightedWBSTechnology = (KnightedWBSTechnology) iterator
					.next();
			//Iterate through the List; Save to the database if it is not null
			log.info("-->>knightedWBSTechnology.getHours()"+knightedWBSTechnology.getHours());
			if(knightedWBSTechnology!=null){
				//To remove the extra commas; a temporary fix
				//Future change: Delegate to the ValidationController Class
				knightedWBSTechnology.setHours(knightedWBSTechnology.getHours().replace(",", ""));
				//To truncate to 30 characters; a temporary fix
				if(knightedWBSTechnology.getTaskNumber().length() > 30){
					knightedWBSTechnology.setTaskNumber(knightedWBSTechnology.getTaskNumber().substring(0, 29));
				}
				//To avoid null entries in the database, replace with 0
				//This avoids the problem of task number concatenation
				//Task number is being concatenated and multiple entries are stored in the same row
				if(knightedWBSTechnology.getHours().isEmpty()){
					knightedWBSTechnology.setHours("0");
				}
				//Getting Project object from the session. Setting it to the KnightedWBS
				//Project project = (Project)session.getAttribute("currentProject");
				knightedWBSTechnology.setTaskName(sessionProject.getProjectId().toString());
				//First check if entry exists
				//Yes - update query
				//No - insert query
				
				//technologyService.insertKnightedWBS(knightedWBSTechnology);
				technologyService.updateKnightedWBS(knightedWBSTechnology);
			}
		}
		
		model.addAttribute("taskNumber", knightedWBSFormList.get(0).getTaskNumber());
		
		String message = "Knighted WBS has been saved!";
		model.addAttribute("message", message); 
		return "redirect:/createProject";		
	}

	/**
	 * Works with any two maps with common key / value types.
	 * The key type must implement Comparable though (for sorting).
	 * Returns a map containing all keys that appear in either of the supplied maps.
	 * The values will be true if and only if either
	 *   - map1.get(key)==map2.get(key) (values may be null) or
	 *   - map1.get(key).equals(map2.get(key)).
	 */
	public static <K extends Comparable<? super K>, V>
	Map<K, V> compareEntries(final Map<K, V> map1, final Map<K, V> map2){
		
		if(map1.isEmpty()){
			return map2;
		}
		if(map2.isEmpty()){
			return map1;
		}
		
	    final Collection<K> allKeys = new HashSet<K>();
	    allKeys.addAll(map1.keySet());
	    allKeys.addAll(map2.keySet());
	    final Map<K, V> result = new TreeMap<K, V>();
	    for(final K key : allKeys){
	    	//map1 has form and map2 has database WBS
	    	//If map1 value is ne to map2 value, then insert value into result
	    	//This is to make sure, we insert only modified values into the database
	    	if(!(map1.get(key).equals(map2.get(key)) )){
	    		result.put(key,map2.get(key) );
	    	}
	    }
	    return result;
	}

	
	/* This method is used to get the total hours for a WBS.
	 * 
	 * 
	 * */
	public String getTotalHours(String serviceLevel) {
		float totalHours = 0;
		List<KnightedWBSTechnology> knightedWBSList = technologyService.getKnightedWBS();
		for (Iterator iterator = knightedWBSList.iterator(); iterator.hasNext();) {
			KnightedWBSTechnology knightedWBSTechnology = (KnightedWBSTechnology) iterator
					.next();
			if(knightedWBSTechnology.getHours()!=null && 
					knightedWBSTechnology.getTaskNumber().contains(serviceLevel))
			{totalHours += Float.parseFloat(knightedWBSTechnology.getHours());}
		}
		return Float.toString(totalHours);
	}
	
	
	@RequestMapping(value = "/totalHours", method=RequestMethod.GET)
	public ModelAndView  getTotalHoursAjax() {
		float totalHours = 0;
		List<KnightedWBSTechnology> knightedWBSList = technologyService.getKnightedWBS();
		for (Iterator iterator = knightedWBSList.iterator(); iterator.hasNext();) {
			KnightedWBSTechnology knightedWBSTechnology = (KnightedWBSTechnology) iterator
					.next();
			if(knightedWBSTechnology.getHours()!=null)
			{totalHours += Float.parseFloat(knightedWBSTechnology.getHours());}
		}
		return new ModelAndView("createTechnology", "ajaxmessage", "Total hours via ajax:"+Float.toString(totalHours)); 
	}
	
	///knightedrate
	@RequestMapping(value = "/knightedrate", method=RequestMethod.GET)
	public String getKnightedRate(Model model, HttpSession session){
		log.info("***TechnologyController: knightedRate...");
		String username = session.getAttribute("username").toString();
		model.addAttribute("username", username);
		
		KnightedWBSRateForm knightedWBSRateForm = new KnightedWBSRateForm();
		//Set the current database rate values to the Form
		knightedWBSRateForm.setKnightedWBSRates(technologyService.getKnightedRate());
		
		model.addAttribute("knightedWBSRateForm" , knightedWBSRateForm);
		model.addAttribute("message","Knighted Rates");
		return "knightedRateForm"; 
	}
	
	@RequestMapping(value = "/knightedrate", method=RequestMethod.POST)
	public String setKnightedRate(Model model, 
			@ModelAttribute("knightedWBSRateForm") KnightedWBSRateForm knightedWBSRateForm, 
			BindingResult result ){
		log.info("***TechnologyController: knightedWBSSave...");
		
		List<KnightedWBSRate> knightedWBSRateFormList = new ArrayList<KnightedWBSRate>();
		if(knightedWBSRateFormList!=null){
			knightedWBSRateFormList = knightedWBSRateForm.getKnightedWBSRates();
		}
		
		//Set<KnightedWBSTechnology> knightedWBSSet = new HashSet<KnightedWBSTechnology>(technologyService.getKnightedWBS());
		List<KnightedWBSRate> knightedWBSRateListDb = new ArrayList<KnightedWBSRate>();
		knightedWBSRateListDb = technologyService.getKnightedRate();
		
		
		
		HashMap <String, String> hashMapKnightedWBSRateDb = new HashMap<String, String>();
		HashMap <String, String> hashMapKnightedWBSRateForm = new HashMap<String, String>();		
		
		for (KnightedWBSRate i : knightedWBSRateFormList) hashMapKnightedWBSRateForm.put(i.getTaskNumber().toString(),i.getRate());
		for (KnightedWBSRate i : knightedWBSRateListDb) hashMapKnightedWBSRateDb.put(i.getTaskNumber().toString(),i.getRate());

		
		
		for (Iterator iterator = knightedWBSRateFormList.iterator(); iterator
				.hasNext();) {
			KnightedWBSRate knightedWBSRate = (KnightedWBSRate) iterator
					.next();
			//Iterate through the List; Save to the database if it is not null
			log.info("-->>knightedWBSTechnology.getHours()"+knightedWBSRate.getRate());
			if(knightedWBSRate!=null){
				if(knightedWBSRate.getRate().isEmpty()){
					knightedWBSRate.setRate("0");
				}
				//technologyService.insertKnightedWBS(knightedWBSTechnology);
				technologyService.insertKnightedRate(knightedWBSRate);
			}
			
		}	
		
		model.addAttribute("message","Knighted Rates");
		return "redirect:/home";	
	}
	
	
}
