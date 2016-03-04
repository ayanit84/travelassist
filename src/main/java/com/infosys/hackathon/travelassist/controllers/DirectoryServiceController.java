package com.infosys.hackathon.travelassist.controllers;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infosys.hackathon.services.KeyValuePair;
import com.infosys.hackathon.services.ResultCodes;
import com.infosys.hackathon.services.country.dto.CountryServiceResponse;
import com.infosys.hackathon.services.directory.dto.SearchRequest;
import com.infosys.hackathon.services.directory.dto.SearchResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.services.CountryServiceClient;
import com.infosys.hackathon.travelassist.services.DirectoryServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class DirectoryServiceController {

	private static final String EMPLOYEES_KEY = "employees";
	private static final String DIRECTORY_SEARCH_HANDLER = "search";
	private static final String COUNTRY_STATES_HANDLER = "states";
	private static final String COUNTRY_CITIES_HANDLER = "cities";

	private static final Logger LOGGER = Logger
			.getLogger(DirectoryServiceController.class);

	@Autowired
	private DirectoryServiceClient directoryServiceClient;

	@Autowired
	private CountryServiceClient countryServiceClient;

	@RequestMapping(value = "/showFilter", method = RequestMethod.GET)
	public String showFilters(@CookieValue("coun") String country, Model model) {
		LOGGER.info("fetching states of specific country");
		CountryServiceResponse serviceResponse = new CountryServiceResponse();
		List<KeyValuePair> states = null;
		List<KeyValuePair> cities = null;
		try {
			serviceResponse = countryServiceClient.getRequest(
					COUNTRY_STATES_HANDLER, CountryServiceResponse.class,
					country);
			states = serviceResponse.getDetails();
			LOGGER.info("successfully processed, " + states.size()
					+ " states returned");

			if (states.size() > 0) {
				String firstState = states.get(0).getKey();
				serviceResponse = countryServiceClient.getRequest(
						COUNTRY_CITIES_HANDLER, CountryServiceResponse.class,
						country, firstState);
				cities = serviceResponse.getDetails();
				LOGGER.info("successfully processed, " + cities.size()
						+ " cities returned");
			}

			model.addAttribute("states", states);
			model.addAttribute("cities", cities);
		} catch (TravelServiceException e) {
			serviceResponse.setResult(ResultCodes.Failure);
		}

		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}

	@RequestMapping(value = "/showMoreFilters", method = RequestMethod.GET)
	public String showMoreFilters(@CookieValue("coun") String country,
			@RequestParam String state, ModelMap model) {
		LOGGER.info("fetching states of specific country");
		CountryServiceResponse serviceResponse = new CountryServiceResponse();
		List<KeyValuePair> states = null;
		List<KeyValuePair> cities = null;
		try {
			serviceResponse = countryServiceClient.getRequest(
					COUNTRY_STATES_HANDLER, CountryServiceResponse.class,
					country);
			states = serviceResponse.getDetails();
			LOGGER.info("successfully processed, " + states.size()
					+ " states returned");

			if (states.size() > 0) {
				String firstState = states.get(0).getKey();
				serviceResponse = countryServiceClient.getRequest(
						COUNTRY_CITIES_HANDLER, CountryServiceResponse.class,
						country, firstState);
				cities = serviceResponse.getDetails();
			}

			model.addAttribute("states", states);
			model.addAttribute("cities", cities);
		} catch (TravelServiceException e) {
			serviceResponse.setResult(ResultCodes.Failure);
		}

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
			showMoreFilters(country, state, model);
		} catch (TravelServiceException e) {
			searchResponse.setResult(ResultCodes.Failure);
		}
		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}
}
