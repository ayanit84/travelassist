package com.infosys.hackathon.travelassist.controllers;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infosys.hackathon.travelassist.utils.ApplicationConstants;
import com.infosys.hackathon.travelassist.utils.TravelCookieHelper;

@Controller
public class IndexController {

	private static final Logger LOGGER = Logger
			.getLogger(IndexController.class);

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

	@RequestMapping(value = "/employee-listing", method = RequestMethod.GET)
	public String employee() {
		return ApplicationConstants.EMPLOYEE_LISTING_PAGE;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return ApplicationConstants.CONTACT_PAGE;
	}
}
