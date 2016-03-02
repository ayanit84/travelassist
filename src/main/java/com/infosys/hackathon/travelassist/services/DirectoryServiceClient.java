package com.infosys.hackathon.travelassist.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;

import com.infosys.hackathon.services.client.AbstractServiceClient;
import com.infosys.hackathon.services.directory.dto.SearchRequest;
import com.infosys.hackathon.services.directory.dto.SearchResponse;
import com.infosys.hackathon.services.exceptions.TravelServiceException;
import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;
import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Service
public class DirectoryServiceClient extends
		AbstractServiceClient<SearchRequest, SearchResponse> {

	private static final String DIRECTORY_SERVICE_NAME = "directory";
	private static final String DIRECTORY_SEARCH_HANDLER = "search";

	@Autowired
	private ServiceEndpoint endpoint;

	@Override
	public String getServiceName() {
		return DIRECTORY_SERVICE_NAME;
	}

	@Override
	public SearchResponse getRequest(Class<SearchResponse> responseType)
			throws TravelServiceException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SearchResponse postRequest(SearchRequest request,
			Class<SearchResponse> responseType) throws TravelServiceException {
		try {
			return getRestTemplate().postForObject(
					endpoint.getEndPoint(DIRECTORY_SERVICE_NAME,
							DIRECTORY_SEARCH_HANDLER), request, responseType);
		} catch (RestClientException | ServiceEndPointNotFoundException e) {
			throw new RestClientException(e.getMessage());
		}
	}

}
