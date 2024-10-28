package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Cinema;
import com.service.CinemaService;
import com.entity.City;
import com.service.CityService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/cinema", produces = "text/plain;charset=utf-8")
public class CinemaAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private CinemaService cinemaService;
	@Autowired
	@Resource
	private CityService cityService;

	// 准备添加数据
	@RequestMapping("createCinema.action")
	public String createCinema() {
		List<City> cityList = this.cityService.getAllCity();
		this.getRequest().setAttribute("cityList", cityList);
		return "admin/addcinema";
	}

	// 添加数据
	@RequestMapping("addCinema.action")
	public String addCinema(Cinema cinema) {
		this.cinemaService.insertCinema(cinema);
		return "redirect:/cinema/createCinema.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteCinema.action")
	public String deleteCinema(String id) {
		this.cinemaService.deleteCinema(id);
		return "redirect:/cinema/getAllCinema.action";
	}

	// 批量删除数据
	@RequestMapping("deleteCinemaByIds.action")
	public String deleteCinemaByIds() {
		String[] ids = this.getRequest().getParameterValues("cinemaid");
		for (String cinemaid : ids) {
			this.cinemaService.deleteCinema(cinemaid);
		}
		return "redirect:/cinema/getAllCinema.action";
	}

	// 更新数据
	@RequestMapping("updateCinema.action")
	public String updateCinema(Cinema cinema) {
		this.cinemaService.updateCinema(cinema);
		return "redirect:/cinema/getAllCinema.action";
	}

	// 显示全部数据
	@RequestMapping("getAllCinema.action")
	public String getAllCinema(String number) {
		List<Cinema> cinemaList = this.cinemaService.getAllCinema();
		PageHelper.getPage(cinemaList, "cinema", null, null, 10, number, this.getRequest(), null);
		return "admin/listcinema";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryCinemaByCond.action")
	public String queryCinemaByCond(String cond, String name, String number) {
		Cinema cinema = new Cinema();
		if (cond != null) {
			if ("cinemaname".equals(cond)) {
				cinema.setCinemaname(name);
			}
			if ("cityid".equals(cond)) {
				cinema.setCityid(name);
			}
			if ("address".equals(cond)) {
				cinema.setAddress(name);
			}
			if ("contact".equals(cond)) {
				cinema.setContact(name);
			}
			if ("memo".equals(cond)) {
				cinema.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.cinemaService.getCinemaByLike(cinema), "cinema", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querycinema";
	}

	// 按主键查询数据
	@RequestMapping("getCinemaById.action")
	public String getCinemaById(String id) {
		Cinema cinema = this.cinemaService.getCinemaById(id);
		this.getRequest().setAttribute("cinema", cinema);
		List<City> cityList = this.cityService.getAllCity();
		this.getRequest().setAttribute("cityList", cityList);
		return "admin/editcinema";
	}

	public CinemaService getCinemaService() {
		return cinemaService;
	}

	public void setCinemaService(CinemaService cinemaService) {
		this.cinemaService = cinemaService;
	}

}
