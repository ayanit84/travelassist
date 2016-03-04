package com.infosys.hackathon.travelassist.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.infosys.hackathon.travelassist.exceptions.TravelAssistCookieNotFoundException;

public class TravelCookieHelper {

	public static Cookie create(String name, String value) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(10000);
		return cookie;
	}

	public static Cookie get(String name, HttpServletRequest requestObj)
		throws TravelAssistCookieNotFoundException {
		Cookie[] allCookies = requestObj.getCookies();
		if (allCookies != null) {
			for (Cookie cookie : allCookies) {
				if (cookie.getName().equals(name)) {
					return cookie;
				}
			}
		}
		throw new TravelAssistCookieNotFoundException(
			name + " cookie not found");
	}
}
