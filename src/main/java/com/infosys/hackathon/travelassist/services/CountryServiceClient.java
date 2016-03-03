package com.infosys.hackathon.travelassist.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;

import com.infosys.hackathon.services.ServiceRequest;
import com.infosys.hackathon.services.client.AbstractServiceClient;
import com.infosys.hackathon.services.country.dto.CountryServiceResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;
import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Service
public class CountryServiceClient extends
		AbstractServiceClient<ServiceRequest, CountryServiceResponse> {

	private static final String COUNTRY_SERVICE_NAME = "country";

	@Autowired
	private ServiceEndpoint serviceEndPoint;

	@Override
	public String getServiceName() {
		return COUNTRY_SERVICE_NAME;
	}

	@Override
	public CountryServiceResponse postRequest(String handlerName,
			ServiceRequest request, Class<CountryServiceResponse> responseType)
			throws TravelServiceException {
		throw new TravelServiceException("Not Implemented");
	}

	@Override
	public CountryServiceResponse getRequest(String handlerName,
			Class<CountryServiceResponse> responseType, String... urlParams)
			throws TravelServiceException {
		try {
			return getRestTemplate().getForObject(
					serviceEndPoint.getEndPoint(COUNTRY_SERVICE_NAME,
							handlerName), responseType);
		} catch (RestClientException | ServiceEndPointNotFoundException e) {
			throw new RestClientException(e.getMessage());
		}
	}

}
