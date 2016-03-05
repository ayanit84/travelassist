package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infosys.hackathon.services.dos.dto.OnsiteActivityResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.services.ActivitiesServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class ActivityServiceController {

	private static final Logger LOGGER = Logger
		.getLogger(ActivityServiceController.class);

	private static final String FETCH_HANDLER = "fetch";

	@Autowired
	private ActivitiesServiceClient activitiesServiceClient;

	@RequestMapping(value = "/dos", method = RequestMethod.GET)
	public String showDos(@CookieValue("coun") String country, Model model) {

		OnsiteActivityResponse response = null;
		try {
			response = activitiesServiceClient.getRequest(FETCH_HANDLER,
				OnsiteActivityResponse.class, country);
			model.addAttribute("activities", response.getOnsiteActivity());
		} catch (TravelServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ApplicationConstants.ACTIVITIES_PAGE;
	}
}
