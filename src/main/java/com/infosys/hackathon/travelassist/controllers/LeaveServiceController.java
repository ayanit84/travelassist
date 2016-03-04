package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infosys.hackathon.services.ResultCodes;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.services.policy.EligibilityInformation;
import com.infosys.hackathon.services.policy.dto.PolicyDetailsResponse;
import com.infosys.hackathon.travelassist.services.PolicyServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class LeaveServiceController {
	private static final Logger LOGGER = Logger
			.getLogger(LeaveServiceController.class);

	private static final String POLICY_FETCH_HANDLER = "details";

	@Autowired
	PolicyServiceClient policyServiceClient;

	@RequestMapping(value = "/leaves", method = RequestMethod.GET)
	public String forwardToPolicy() {
		return ApplicationConstants.LEAVES_PAGE;

	}

	@RequestMapping(value = "/leaves", method = RequestMethod.POST)
	public String getPolicyData(@CookieValue("coun") String country,
		@RequestParam String jobLevel, ModelMap model) {
		LOGGER.info("fetching Leaves Data:" + country + " , " + jobLevel);
		PolicyDetailsResponse response = new PolicyDetailsResponse();

		try {
			response = policyServiceClient.getRequest(POLICY_FETCH_HANDLER,
				PolicyDetailsResponse.class, country, jobLevel);

			EligibilityInformation eligibilityInformation = response
				.getEligibilityDetails();

			model.addAttribute("eligibilityInfo", eligibilityInformation);
		} catch (TravelServiceException e) {
			response.setResult(ResultCodes.Failure);
		}
		return ApplicationConstants.LEAVES_PAGE;

	}
	
}
