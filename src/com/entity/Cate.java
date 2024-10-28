package com.entity;

import java.util.ArrayList;
import java.util.List;

import com.util.VeDate;

public class Cate {
	private String cateid = "C" + VeDate.getStringId();
	private String catename;
	private String memo;
	private String addtime;
	private List<Film> flimList = new ArrayList<Film>();

	public List<Film> getFlimList() {
		return flimList;
	}

	public void setFlimList(List<Film> flimList) {
		this.flimList = flimList;
	}

	public String getCateid() {
		return cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public String getCatename() {
		return this.catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
}
