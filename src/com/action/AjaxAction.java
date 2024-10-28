package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Cinema;
import com.service.CinemaService;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/ajax", produces = "text/plain;charset=utf-8")
public class AjaxAction extends BaseAction {

	@Autowired
	@Resource
	private CinemaService cinemaService;

	// 准备添加数据
	@RequestMapping("getCinema.action")
	@ResponseBody
	public String getCinema() throws JSONException {
		String cityid = this.getRequest().getParameter("cityid");
		Cinema cinema = new Cinema();
		cinema.setCityid(cityid);
		List<Cinema> cinemaList = this.cinemaService.getCinemaByCond(cinema);
		JSONArray cinemaid = new JSONArray(); // 存放ID
		JSONArray cinemaname = new JSONArray(); // 存放名称
		for (Cinema c : cinemaList) {
			cinemaid.put(c.getCinemaid());
			cinemaname.put(c.getCinemaname());
		}
		JSONObject json = new JSONObject();
		json.put("cinemaid", cinemaid.toString().replaceAll("\"", ""));
		json.put("cinemaname", cinemaname.toString().replaceAll("\"", ""));
		System.out.println(json.toString());
		return json.toString();
	}

}
