package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infosys.hackathon.services.contact.SearchResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.services.ContactServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class ContactController {

	private static final String INCIDENT_REPORTING_KEY = "incidentReporting";

	private static final String EMERGENCY_CONTACTS_KEY = "emergencyContacts";

	private static final String SERVICE_DESK_KEY = "serviceDesk";

	private static final String COUNTRY_HEAD_KEY = "countryHead";

	private static final String BPHR_KEY = "bphr";

	private static final Logger LOGGER = Logger
		.getLogger(ContactController.class);

	private static final String CONTACT_HANDLER = "fetch";

	@Autowired
	private ContactServiceClient contactServiceClient;

	@RequestMapping(value = "/emergency-contact", method = RequestMethod.GET)
	public String emergencyContact(@CookieValue("coun") String country,
		ModelMap model) {
		LOGGER.info("initializing the contact screen");
		SearchResponse contServiceResponse = new SearchResponse();
		try {
			contServiceResponse = contactServiceClient
				.getRequest(CONTACT_HANDLER, SearchResponse.class, country);
			model.addAttribute(BPHR_KEY, contServiceResponse.getBphr());
			model.addAttribute(COUNTRY_HEAD_KEY,
				contServiceResponse.getCountryHead());
			model.addAttribute(SERVICE_DESK_KEY,
				contServiceResponse.getCountry().getServiceDesk());
			model.addAttribute(EMERGENCY_CONTACTS_KEY,
				contServiceResponse.getCountry().getEmergencyContacts());
			model.addAttribute(INCIDENT_REPORTING_KEY,
				contServiceResponse.getCountry().getIncidentReporting());
		} catch (TravelServiceException e) {
			LOGGER.error(e.getMessage());
		}
		return ApplicationConstants.EMERGENCY_CONTACT_PAGE;
	}
}
