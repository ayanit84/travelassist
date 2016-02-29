package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class DirectoryServiceController {

	private static final Logger LOGGER = Logger
		.getLogger(DirectoryServiceController.class);

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listEmployees() {
		LOGGER.info("forward to employee listing page");
		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}

	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String listEmployeesResult(@RequestParam String state,
		@RequestParam String city) {
		LOGGER
			.info("search for employees at state:" + state + ", city=" + city);
		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}
}
