package com.infosys.hackathon.travelassist.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;

import com.infosys.hackathon.services.ServiceRequest;
import com.infosys.hackathon.services.client.AbstractServiceClient;
import com.infosys.hackathon.services.contact.SearchResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;
import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Service
public class ContactServiceClient extends
		AbstractServiceClient<ServiceRequest, SearchResponse> {

	private static final String CONTACT_SERVICE_NAME = "contact";

	@Autowired
	private ServiceEndpoint endpoint;

	@Override
	public String getServiceName() {
		return CONTACT_SERVICE_NAME;
	}


	@Override
	public SearchResponse getRequest(String handlerName,
			Class<SearchResponse> responseType, String... urlParams)
			throws TravelServiceException {
		try {
			
			StringBuilder serviceUrl = new StringBuilder(endpoint.getEndPoint(CONTACT_SERVICE_NAME,
					handlerName));
			if (urlParams != null && urlParams.length > 0) {
				for (int i = 0; i < urlParams.length; i++) {
					serviceUrl.append("/" + urlParams[i]);
				}
			}
			
			return getRestTemplate()
						.getForObject(
								serviceUrl.toString(), responseType);
			
		} catch (RestClientException | ServiceEndPointNotFoundException e) {
			throw new RestClientException(e.getMessage());
		}
	}
	
	@Override
	public SearchResponse postRequest(String handlerName,
			ServiceRequest request, Class<SearchResponse> responseType)
			throws TravelServiceException {
		// TODO Auto-generated method stub
		throw new TravelServiceException("Not Implemented");
	}

	

}
