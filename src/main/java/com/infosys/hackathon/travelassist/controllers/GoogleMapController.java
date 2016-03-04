package com.infosys.hackathon.travelassist.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infosys.hackathon.services.ResultCodes;
import com.infosys.hackathon.services.country.dto.CountryServiceResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.beans.GoogleMapBean;
import com.infosys.hackathon.travelassist.services.CountryServiceClient;
import com.infosys.hackathon.travelassist.utils.ApplicationConstants;

@Controller
public class GoogleMapController {

	private static final String COUNTRY_ALLCITIES_HANDLER = "allcities";

	private static final Logger LOGGER = Logger
		.getLogger(GoogleMapController.class);

	@Autowired
	private CountryServiceClient countryServiceClient;

	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String showFilters(
		@ModelAttribute("googleMapBean") GoogleMapBean googleMapBean,
		@CookieValue("coun") String country, Model model) {
		LOGGER.info("fetching states of specific country");
		CountryServiceResponse serviceResponse = new CountryServiceResponse();
		try {
			serviceResponse = countryServiceClient.getRequest(
				COUNTRY_ALLCITIES_HANDLER, CountryServiceResponse.class,
				country);
			LOGGER.info("successfully processed, "
				+ serviceResponse.getDetails().size() + " cities returned");

			googleMapBean.setCities(serviceResponse.getDetails());
			model.addAttribute("googleMapBean", googleMapBean);
			model.addAttribute("cities", serviceResponse.getDetails());
		} catch (TravelServiceException e) {
			serviceResponse.setResult(ResultCodes.Failure);
		}

		return ApplicationConstants.MAP_PAGE;
	}

	@RequestMapping(value = "/map", method = RequestMethod.POST)
	public String showMap(
		@ModelAttribute("googleMapBean") GoogleMapBean googleMapBean,
		@CookieValue("coun") String country, Model model) {
		LOGGER.info("fetching states of specific country");
		CountryServiceResponse serviceResponse = new CountryServiceResponse();
		try {
			serviceResponse = countryServiceClient.getRequest(
				COUNTRY_ALLCITIES_HANDLER, CountryServiceResponse.class,
				country);
			LOGGER.info("successfully processed, "
				+ serviceResponse.getDetails().size() + " cities returned");

			googleMapBean.setCities(serviceResponse.getDetails());
			model.addAttribute("googleMapBean", googleMapBean);
			model.addAttribute("cities", serviceResponse.getDetails());
		} catch (TravelServiceException e) {
			serviceResponse.setResult(ResultCodes.Failure);
		}

		return ApplicationConstants.MAP_PAGE;
	}
}
