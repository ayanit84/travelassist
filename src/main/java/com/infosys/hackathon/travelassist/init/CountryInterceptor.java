package com.infosys.hackathon.travelassist.init;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.infosys.hackathon.travelassist.exceptions.TravelAssistCookieNotFoundException;
import com.infosys.hackathon.travelassist.utils.TravelCookieHelper;

public class CountryInterceptor extends HandlerInterceptorAdapter {

	private static final Logger LOGGER = Logger
		.getLogger(CountryInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request,
		HttpServletResponse response, Object handler) throws Exception {
		try {
			if (!request.getRequestURI()
				.equals(request.getContextPath() + "/")) {
				Cookie countryCookie = TravelCookieHelper.get("coun", request);
				if (countryCookie != null) {
					LOGGER.info("Country cookie present in browser");
					return true;
				}
			}
		} catch (TravelAssistCookieNotFoundException e) {
			LOGGER.info("country cookie not found, redirect to login page");
			response.sendRedirect(request.getContextPath() + "/");

		}

		return true;
	}
}
