package com.infosys.hackathon.travelassist.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;

import com.infosys.hackathon.services.ServiceRequest;
import com.infosys.hackathon.services.ServiceResponse;
import com.infosys.hackathon.services.client.AbstractServiceClient;
import com.infosys.hackathon.services.directory.dto.SearchResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.services.policy.EligibilityInformation;
import com.infosys.hackathon.services.policy.dto.PolicyDetailsResponse;
import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;
import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Service
public class PolicyServiceClient extends
		AbstractServiceClient<ServiceRequest, ServiceResponse> {
	private static final String POLICY_SERVICE_NAME = "policy";
	private static final String POLICY_FETCH_HANDLER = "fetchPolicy";

	@Autowired
	private ServiceEndpoint endPoint;

	@Override
	public String getServiceName() {
		return POLICY_SERVICE_NAME;
	}

	@Override
	public ServiceResponse getRequest(String handlerName,
			Class<ServiceResponse> responseType, String... urlParams)
			throws TravelServiceException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ServiceResponse postRequest(String handlerName,
			ServiceRequest request, Class<ServiceResponse> responseType)
			throws TravelServiceException {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public ServiceResponse getRequest(Class<ServiceResponse> responseType)
//			throws TravelServiceException {
//		try {
//			return getRestTemplate().getForObject(
//					endPoint.getEndPoint(POLICY_SERVICE_NAME,
//							POLICY_FETCH_HANDLER), responseType);
//		} catch (RestClientException | ServiceEndPointNotFoundException e) {
//			throw new RestClientException(e.getMessage());
//		}
//	}
//
//	@Override
//	public ServiceResponse postRequest(ServiceRequest request,
//			Class<ServiceResponse> responseType) throws TravelServiceException {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	

}
