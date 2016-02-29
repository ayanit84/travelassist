package com.infosys.hackathon.travelassist.utils;

import javax.servlet.http.Cookie;

public class TravelCookieHelper {

	public static Cookie create(String name, String value) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(10000);
		return cookie;
	}

	public static Cookie get(String name) {
		return null;
	}
}
