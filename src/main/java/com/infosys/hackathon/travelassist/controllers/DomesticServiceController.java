package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class DomesticServiceController {

	private static final Logger LOGGER = Logger
		.getLogger(DomesticServiceController.class);

	@RequestMapping(value = "/domestic", method = RequestMethod.GET)
	public String showFilters(@CookieValue("coun") String country,
		Model model) {

		return ApplicationConstants.DOMESTIC_PAGE;
	}

}
