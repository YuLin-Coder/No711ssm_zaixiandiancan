package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Details;
import com.service.DetailsService;
import com.entity.Film;
import com.entity.City;
import com.entity.Cinema;
import com.service.FilmService;
import com.service.CityService;
import com.service.CinemaService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/details", produces = "text/plain;charset=utf-8")
public class DetailsAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private DetailsService detailsService;
	@Autowired
	@Resource
	private FilmService filmService;
	@Autowired
	@Resource
	private CityService cityService;
	@Autowired
	@Resource
	private CinemaService cinemaService;

	// 准备添加数据
	@RequestMapping("createDetails.action")
	public String createDetails() {
		List<Film> filmList = this.filmService.getAllFilm();
		this.getRequest().setAttribute("filmList", filmList);
		List<City> cityList = this.cityService.getAllCity();
		this.getRequest().setAttribute("cityList", cityList);
		List<Cinema> cinemaList = this.cinemaService.getAllCinema();
		this.getRequest().setAttribute("cinemaList", cinemaList);
		return "admin/adddetails";
	}

	// 添加数据
	@RequestMapping("addDetails.action")
	public String addDetails(Details details) {
		this.detailsService.insertDetails(details);
		return "redirect:/details/createDetails.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteDetails.action")
	public String deleteDetails(String id) {
		this.detailsService.deleteDetails(id);
		return "redirect:/details/getAllDetails.action";
	}

	// 批量删除数据
	@RequestMapping("deleteDetailsByIds.action")
	public String deleteDetailsByIds() {
		String[] ids = this.getRequest().getParameterValues("detailsid");
		for (String detailsid : ids) {
			this.detailsService.deleteDetails(detailsid);
		}
		return "redirect:/details/getAllDetails.action";
	}

	// 更新数据
	@RequestMapping("updateDetails.action")
	public String updateDetails(Details details) {
		this.detailsService.updateDetails(details);
		return "redirect:/details/getAllDetails.action";
	}

	// 显示全部数据
	@RequestMapping("getAllDetails.action")
	public String getAllDetails(String number) {
		List<Details> detailsList = this.detailsService.getAllDetails();
		PageHelper.getPage(detailsList, "details", null, null, 10, number, this.getRequest(), null);
		return "admin/listdetails";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryDetailsByCond.action")
	public String queryDetailsByCond(String cond, String name, String number) {
		Details details = new Details();
		if (cond != null) {
			if ("ordercode".equals(cond)) {
				details.setOrdercode(name);
			}
			if ("filmid".equals(cond)) {
				details.setFilmid(name);
			}
			if ("num".equals(cond)) {
				details.setNum(name);
			}
			if ("price".equals(cond)) {
				details.setPrice(name);
			}
			if ("cityid".equals(cond)) {
				details.setCityid(name);
			}
			if ("cinemaid".equals(cond)) {
				details.setCinemaid(name);
			}
			if ("viewdate".equals(cond)) {
				details.setViewdate(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.detailsService.getDetailsByLike(details), "details", nameList, valueList, 10, number, this.getRequest(),
				"query");
		name = null;
		cond = null;
		return "admin/querydetails";
	}

	// 按主键查询数据
	@RequestMapping("getDetailsById.action")
	public String getDetailsById(String id) {
		Details details = this.detailsService.getDetailsById(id);
		this.getRequest().setAttribute("details", details);
		List<Film> filmList = this.filmService.getAllFilm();
		this.getRequest().setAttribute("filmList", filmList);
		List<City> cityList = this.cityService.getAllCity();
		this.getRequest().setAttribute("cityList", cityList);
		List<Cinema> cinemaList = this.cinemaService.getAllCinema();
		this.getRequest().setAttribute("cinemaList", cinemaList);
		return "admin/editdetails";
	}

	public DetailsService getDetailsService() {
		return detailsService;
	}

	public void setDetailsService(DetailsService detailsService) {
		this.detailsService = detailsService;
	}

}
