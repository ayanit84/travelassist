package com.infosys.hackathon.travelassist.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

import com.infosys.hackathon.travelassist.exceptions.ServiceEndPointNotFoundException;

public class ServiceEndpoint {

	private static final String DOT = ".";
	private static final String SERVICENAMES = "servicenames";
	private static final String DELIMITER = ",";
	private static final String HANDLERS_SUFFIX = "handlers";
	private static final String URL_SUFFIX = "url";
	private static final String BASE_PREFIX = "base";
	private Properties properties;
	private List<ServiceDetails> serviceDetails;

	public ServiceEndpoint() {
		try {
			this.properties = new Properties();
			properties.load(getClass().getClassLoader().getResourceAsStream(
					"main.properties"));
			process();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String getEndPoint(String serviceName, String handler)
			throws ServiceEndPointNotFoundException {
		ServiceDetails details = getServiceDetail(serviceName);
		if (!details.getUrlHandlerMapping().containsKey(handler)) {
			throw new ServiceEndPointNotFoundException(handler
					+ " handler not found under service " + serviceName);
		}
		return getBaseUrl() + details.getUrl()
				+ details.getUrlHandlerMapping().get(handler);
	}

	private void process() {
		StringTokenizer tokenizer = new StringTokenizer(
				this.properties.getProperty(SERVICENAMES), DELIMITER);
		this.serviceDetails = new ArrayList<ServiceEndpoint.ServiceDetails>();
		while (tokenizer.hasMoreTokens()) {
			ServiceDetails details = new ServiceDetails();
			String serviceName = tokenizer.nextToken();

			details.setName(serviceName);
			details.setUrl(this.properties.getProperty(serviceName + DOT
					+ URL_SUFFIX));

			StringTokenizer handlerTokenizer = new StringTokenizer(
					this.properties.getProperty(serviceName + DOT
							+ HANDLERS_SUFFIX), DELIMITER);
			while (handlerTokenizer.hasMoreTokens()) {
				String handler = handlerTokenizer.nextToken();

				details.getUrlHandlerMapping().put(
						handler,
						this.properties.getProperty(serviceName + DOT + handler
								+ DOT + URL_SUFFIX));
			}

			this.serviceDetails.add(details);
		}
	}

	private String getBaseUrl() {
		return this.properties.getProperty(BASE_PREFIX + DOT + URL_SUFFIX);
	}

	private ServiceDetails getServiceDetail(String serviceName)
			throws ServiceEndPointNotFoundException {
		for (ServiceDetails eachServie : this.serviceDetails) {
			if (eachServie.getName().equals(serviceName)) {
				return eachServie;
			}
		}
		throw new ServiceEndPointNotFoundException(serviceName + " not found");
	}

	class ServiceDetails {
		private String name;
		private String url;
		private Map<String, String> urlHandlerMapping;

		public ServiceDetails() {
			urlHandlerMapping = new HashMap<String, String>();
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getUrl() {
			return url;
		}

		public void setUrl(String url) {
			this.url = url;
		}

		public Map<String, String> getUrlHandlerMapping() {
			return urlHandlerMapping;
		}

		public void setUrlHandlerMapping(Map<String, String> urlHandlerMapping) {
			this.urlHandlerMapping = urlHandlerMapping;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + getOuterType().hashCode();
			result = prime * result + ((name == null) ? 0 : name.hashCode());
			return result;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			ServiceDetails other = (ServiceDetails) obj;
			if (!getOuterType().equals(other.getOuterType()))
				return false;
			if (name == null) {
				if (other.name != null)
					return false;
			} else if (!name.equals(other.name))
				return false;
			return true;
		}

		private ServiceEndpoint getOuterType() {
			return ServiceEndpoint.this;
		}

		@Override
		public String toString() {
			return "ServiceDetails [name=" + name + ", url=" + url + "]";
		}

	}

}
