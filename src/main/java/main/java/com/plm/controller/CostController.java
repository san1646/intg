package main.java.com.plm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CostController {

	static org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(HomeController.class.getName());
	
	@RequestMapping(value = "/calculateCost", method = { RequestMethod.GET })
	public String calculateKnightedCost(){
		
		
		return "cost";
	}
}
