package com.infosys.hackathon.travelassist.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;

import com.infosys.hackathon.services.ServiceRequest;
import com.infosys.hackathon.services.ServiceResponse;
import com.infosys.hackathon.services.client.AbstractServiceClient;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.services.policy.dto.PolicyDetailsResponse;
import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;
import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Service
public class PolicyServiceClient extends AbstractServiceClient<ServiceRequest, PolicyDetailsResponse> {
	private static final String POLICY_SERVICE_NAME = "policy";

	@Autowired
	private ServiceEndpoint serviceEndPoint;

	@Override
	public String getServiceName() {
		return POLICY_SERVICE_NAME;
	}

	@Override
	public PolicyDetailsResponse getRequest(String handlerName, Class<PolicyDetailsResponse> responseType, String... urlParams)
			throws TravelServiceException {

		StringBuilder serviceUrl;
		try {
			serviceUrl = new StringBuilder(serviceEndPoint.getEndPoint(POLICY_SERVICE_NAME, handlerName));

			if (urlParams != null && urlParams.length > 0) {
				for (int i = 0; i < urlParams.length; i++) {
					serviceUrl.append("/" + urlParams[i]);
				}
			}

			return getRestTemplate().getForObject(serviceUrl.toString(), responseType);
		} catch (RestClientException | ServiceEndPointNotFoundException e) {
			throw new RestClientException(e.getMessage());
		}
	}

	@Override
	public PolicyDetailsResponse postRequest(String handlerName, ServiceRequest request, Class<PolicyDetailsResponse> responseType)
			throws TravelServiceException {
		throw new TravelServiceException("Post Request Not Allowed");
	}

}
