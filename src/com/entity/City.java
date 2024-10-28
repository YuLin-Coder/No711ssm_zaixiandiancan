package com.entity;

import com.util.VeDate;

public class City {
	private String cityid = "C" + VeDate.getStringId();
	private String cityname;

	public String getCityid() {
		return cityid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	public String getCityname() {
		return this.cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
}
