package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.City;

@Service("cityService")
public interface CityService {
	// 插入数据 调用cityDAO里的insertCity配置
	public int insertCity(City city);

	// 更新数据 调用cityDAO里的updateCity配置
	public int updateCity(City city);

	// 删除数据 调用cityDAO里的deleteCity配置
	public int deleteCity(String cityid);

	// 查询全部数据 调用cityDAO里的getAllCity配置
	public List<City> getAllCity();

	// 按照City类里面的字段名称精确查询 调用cityDAO里的getCityByCond配置
	public List<City> getCityByCond(City city);

	// 按照City类里面的字段名称模糊查询 调用cityDAO里的getCityByLike配置
	public List<City> getCityByLike(City city);

	// 按主键查询表返回单一的City实例 调用cityDAO里的getCityById配置
	public City getCityById(String cityid);

}
