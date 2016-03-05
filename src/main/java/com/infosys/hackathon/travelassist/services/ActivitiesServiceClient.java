package com.infosys.hackathon.travelassist.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;

import com.infosys.hackathon.services.client.AbstractServiceClient;
import com.infosys.hackathon.services.dos.dto.OnsiteActivityRequest;
import com.infosys.hackathon.services.dos.dto.OnsiteActivityResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;
import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Service
public class ActivitiesServiceClient extends
	AbstractServiceClient<OnsiteActivityRequest, OnsiteActivityResponse> {

	private static final String ACTIVITY_SERVICE_NAME = "activity";
	@Autowired
	private ServiceEndpoint endpoint;

	@Override
	public String getServiceName() {
		return ACTIVITY_SERVICE_NAME;
	}

	@Override
	public OnsiteActivityResponse getRequest(String handlerName,
		Class<OnsiteActivityResponse> responseType, String... urlParams)
			throws TravelServiceException {
		try {

			StringBuilder serviceUrl = new StringBuilder(
				endpoint.getEndPoint(ACTIVITY_SERVICE_NAME, handlerName));
			if (urlParams != null && urlParams.length > 0) {
				for (int i = 0; i < urlParams.length; i++) {
					serviceUrl.append("/" + urlParams[i]);
				}
			}

			return getRestTemplate().getForObject(serviceUrl.toString(),
				responseType);

		} catch (RestClientException | ServiceEndPointNotFoundException e) {
			throw new RestClientException(e.getMessage());
		}
	}

	@Override
	public OnsiteActivityResponse postRequest(String handlerName,
		OnsiteActivityRequest request,
		Class<OnsiteActivityResponse> responseType)
			throws TravelServiceException {
		// TODO Auto-generated method stub
		return null;
	}

}
