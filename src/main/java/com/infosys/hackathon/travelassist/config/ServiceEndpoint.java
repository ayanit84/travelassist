package com.infosys.hackathon.travelassist.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

public class ServiceEndpoint {

	private static final String DELIMITER = ",";
	private static final String HANDLERS_SUFFIX = ".handlers";
	private static final String URL_SUFFIX = ".url";
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

	public String getEndPoint(String serviceName, String handler) {
		return null;
	}

	private void process() {
		StringTokenizer tokenizer = new StringTokenizer(
				this.properties.getProperty("services"), DELIMITER);
		this.serviceDetails = new ArrayList<ServiceEndpoint.ServiceDetails>();
		while (tokenizer.hasMoreTokens()) {
			ServiceDetails details = new ServiceDetails();
			String serviceName = tokenizer.nextToken();

			details.setName(serviceName);
			details.setUrl(this.properties
					.getProperty(serviceName + URL_SUFFIX));

			StringTokenizer handlerTokenizer = new StringTokenizer(
					this.properties.getProperty(serviceName + HANDLERS_SUFFIX),
					DELIMITER);
			while (handlerTokenizer.hasMoreTokens()) {
				String handler = handlerTokenizer.nextToken();

				details.getUrlHandlerMapping().put(
						handler,
						this.properties.getProperty(serviceName + "." + handler
								+ URL_SUFFIX));
			}

			this.serviceDetails.add(details);
		}
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

	}

}
