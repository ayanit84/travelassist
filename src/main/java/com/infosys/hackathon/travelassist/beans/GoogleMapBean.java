package com.infosys.hackathon.travelassist.beans;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.infosys.hackathon.services.KeyValuePair;

public class GoogleMapBean {

	private String selectedCity;
	private List<KeyValuePair> cities;
	private Map<String, String> cityMap = new HashMap<String, String>();

	public Map<String, String> getCityMap() {
		return cityMap;
	}

	public void setCityMap(Map<String, String> cityMap) {
		this.cityMap = cityMap;
	}

	public String getSelectedCity() {
		return selectedCity;
	}

	public void setSelectedCity(String selectedCity) {
		this.selectedCity = selectedCity;
	}

	public List<KeyValuePair> getCities() {
		return cities;
	}

	public void setCities(List<KeyValuePair> cities) {
		this.cities = cities;
		for (KeyValuePair keyValuePair : cities) {
			cityMap.put(keyValuePair.getKey(), keyValuePair.getValue());
		}
	}

}
