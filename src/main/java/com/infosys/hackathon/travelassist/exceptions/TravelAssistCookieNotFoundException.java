package com.infosys.hackathon.travelassist.exceptions;

import com.infosys.hackathon.services.exceptions.TravelAssistException;

public class TravelAssistCookieNotFoundException extends TravelAssistException {

	private static final long serialVersionUID = 1L;

	public TravelAssistCookieNotFoundException(String message) {
		super(message);
	}

}
