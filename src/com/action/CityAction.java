package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.City;
import com.service.CityService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/city", produces = "text/plain;charset=utf-8")
public class CityAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private CityService cityService;

	// 准备添加数据
	@RequestMapping("createCity.action")
	public String createCity() {
		return "admin/addcity";
	}

	// 添加数据
	@RequestMapping("addCity.action")
	public String addCity(City city) {
		this.cityService.insertCity(city);
		return "redirect:/city/createCity.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteCity.action")
	public String deleteCity(String id) {
		this.cityService.deleteCity(id);
		return "redirect:/city/getAllCity.action";
	}

	// 批量删除数据
	@RequestMapping("deleteCityByIds.action")
	public String deleteCityByIds() {
		String[] ids = this.getRequest().getParameterValues("cityid");
		for (String cityid : ids) {
			this.cityService.deleteCity(cityid);
		}
		return "redirect:/city/getAllCity.action";
	}

	// 更新数据
	@RequestMapping("updateCity.action")
	public String updateCity(City city) {
		this.cityService.updateCity(city);
		return "redirect:/city/getAllCity.action";
	}

	// 显示全部数据
	@RequestMapping("getAllCity.action")
	public String getAllCity(String number) {
		List<City> cityList = this.cityService.getAllCity();
		PageHelper.getPage(cityList, "city", null, null, 10, number, this.getRequest(), null);
		return "admin/listcity";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryCityByCond.action")
	public String queryCityByCond(String cond, String name, String number) {
		City city = new City();
		if (cond != null) {
			if ("cityname".equals(cond)) {
				city.setCityname(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.cityService.getCityByLike(city), "city", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querycity";
	}

	// 按主键查询数据
	@RequestMapping("getCityById.action")
	public String getCityById(String id) {
		City city = this.cityService.getCityById(id);
		this.getRequest().setAttribute("city", city);
		return "admin/editcity";
	}

	public CityService getCityService() {
		return cityService;
	}

	public void setCityService(CityService cityService) {
		this.cityService = cityService;
	}

}
