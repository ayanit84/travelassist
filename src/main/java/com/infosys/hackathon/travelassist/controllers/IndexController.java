package com.infosys.hackathon.travelassist.controllers;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infosys.hackathon.services.country.dto.CountryServiceResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.services.CountryServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;
import com.infosys.hackathon.travelassist.utils.TravelCookieHelper;

@Controller
public class IndexController {

	private static final String COUNTRIES_KEY = "countries";

	private static final Logger LOGGER = Logger
			.getLogger(IndexController.class);

	private static final String COUNTRY_COUNTRIES_HANDLER = "countries";

	@Autowired
	private CountryServiceClient countryServiceClient;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model, HttpSession session) {
		LOGGER.info("initializing the login screen");
		CountryServiceResponse serviceResponse = new CountryServiceResponse();
		try {
			serviceResponse = countryServiceClient.getRequest(
					COUNTRY_COUNTRIES_HANDLER, CountryServiceResponse.class);
			session.setAttribute(COUNTRIES_KEY, serviceResponse.getDetails());
			LOGGER.info("service called to fetch all countries, size: "
					+ serviceResponse.getDetails().size());
		} catch (TravelServiceException e) {
			LOGGER.error(e.getMessage());
		}
		return ApplicationConstants.INDEX_PAGE;
	}

	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help() {
		return ApplicationConstants.HELP_PAGE;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(@RequestParam String country,
			HttpServletResponse response) {
		LOGGER.info("selected country " + country);
		response.addCookie(TravelCookieHelper.create(
				ApplicationConstants.COUNTRY_COOKIE_NAME, country));
		return ApplicationConstants.HOME_PAGE;
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactUs() {
		return ApplicationConstants.CONTACT_PAGE;
	}
}
