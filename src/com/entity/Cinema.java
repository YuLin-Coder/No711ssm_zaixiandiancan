package com.entity;

import com.util.VeDate;

public class Cinema {
	private String cinemaid = "C" + VeDate.getStringId();
	private String cinemaname;
	private String cityid;
	private String address;
	private String contact;
	private String memo;
	private String cityname;

	public String getCinemaid() {
		return cinemaid;
	}

	public void setCinemaid(String cinemaid) {
		this.cinemaid = cinemaid;
	}

	public String getCinemaname() {
		return this.cinemaname;
	}

	public void setCinemaname(String cinemaname) {
		this.cinemaname = cinemaname;
	}

	public String getCityid() {
		return this.cityid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getCityname() {
		return this.cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
}
