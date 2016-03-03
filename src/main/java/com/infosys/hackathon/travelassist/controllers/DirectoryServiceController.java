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
import com.infosys.hackathon.services.directory.dto.SearchRequest;
import com.infosys.hackathon.services.directory.dto.SearchResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.services.DirectoryServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class DirectoryServiceController {

	private static final String EMPLOYEES_KEY = "employees";
	private static final String DIRECTORY_SEARCH_HANDLER = "search";

	private static final Logger LOGGER = Logger
			.getLogger(DirectoryServiceController.class);

	@Autowired
	private DirectoryServiceClient directoryServiceClient;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listEmployees() {
		LOGGER.info("forward to employee listing page");
		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}

	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String listEmployeeResult(@CookieValue("coun") String country,
			@RequestParam String state, @RequestParam String city,
			ModelMap model) {
		LOGGER.info("search for employees, country:" + country + " ,state:"
				+ state + ", city=" + city);
		SearchResponse searchResponse = new SearchResponse();
		try {
			searchResponse = directoryServiceClient.postRequest(
					DIRECTORY_SEARCH_HANDLER, new SearchRequest(country, state,
							city), SearchResponse.class);
			LOGGER.info("successfully processed, result = "
					+ searchResponse.getResult() + ", "
					+ searchResponse.getEmployees().size()
					+ " employees returned");

			model.addAttribute(EMPLOYEES_KEY, searchResponse.getEmployees());
		} catch (TravelServiceException e) {
			searchResponse.setResult(ResultCodes.Failure);
		}
		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}
}
