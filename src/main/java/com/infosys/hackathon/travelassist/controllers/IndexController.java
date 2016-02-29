package com.infosys.hackathon.travelassist.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class IndexController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return ApplicationConstants.INDEX_PAGE;
    }
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
    public String help() {
        return ApplicationConstants.HELP_PAGE;
    }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home() {
        return ApplicationConstants.HOME_PAGE;
    }
	
	@RequestMapping(value = "/employee-listing", method = RequestMethod.GET)
    public String employee() {
        return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
    }
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact() {
        return ApplicationConstants.CONTACT_PAGE;
    }
}
