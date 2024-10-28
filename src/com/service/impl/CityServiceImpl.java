package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.CityDAO;
import com.entity.City;
import com.service.CityService;

@Service("cityService")
public class CityServiceImpl implements CityService {
	@Autowired
	@Resource
	private CityDAO cityDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertCity(City city) {
		return this.cityDAO.insertCity(city);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateCity(City city) {
		return this.cityDAO.updateCity(city);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteCity(String cityid) {
		return this.cityDAO.deleteCity(cityid);
	}

	@Override // 继承接口的查询全部
	public List<City> getAllCity() {
		return this.cityDAO.getAllCity();
	}

	@Override // 继承接口的按条件精确查询
	public List<City> getCityByCond(City city) {
		return this.cityDAO.getCityByCond(city);
	}

	@Override // 继承接口的按条件模糊查询
	public List<City> getCityByLike(City city) {
		return this.cityDAO.getCityByLike(city);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public City getCityById(String cityid) {
		return this.cityDAO.getCityById(cityid);
	}

}
