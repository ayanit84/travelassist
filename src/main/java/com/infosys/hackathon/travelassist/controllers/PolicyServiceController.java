package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestParam;

import com.infosys.hackathon.services.ServiceResponse;
import com.infosys.hackathon.services.policy.dto.PolicyDetailsResponse;
import com.infosys.hackathon.travelassist.services.PolicyServiceClient;

@Controller
public class PolicyServiceController {
	private static final Logger LOGGER = Logger
			.getLogger(PolicyServiceController.class);
	
	private static final String ELIGIBILITY_KEY = "eligibility";
	
	@Autowired
	PolicyServiceClient policyServiceClient;
	
	public String getPolicyData(@CookieValue("coun") String country ,@RequestParam String jobLevel, ModelMap model){
		
		PolicyDetailsResponse response = new PolicyDetailsResponse();
		
		return null;
		
	}

}
