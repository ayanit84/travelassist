package com.infosys.hackathon.travelassist.exceptions;

import com.infosys.hackathon.services.exceptions.TravelAssistException;

public class ServiceEndPointNotFoundException extends TravelAssistException {

	private static final long serialVersionUID = 1L;

	public ServiceEndPointNotFoundException(String message) {
		super(message);
	}

}
