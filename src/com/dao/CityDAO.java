package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.City;

@Repository("cityDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface CityDAO {

	/**
	 * CityDAO 接口 可以按名称直接调用city.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包city.xml里的insertCity配置 返回值0(失败),1(成功)
	public int insertCity(City city);

	// 更新数据 调用entity包city.xml里的updateCity配置 返回值0(失败),1(成功)
	public int updateCity(City city);

	// 删除数据 调用entity包city.xml里的deleteCity配置 返回值0(失败),1(成功)
	public int deleteCity(String cityid);

	// 查询全部数据 调用entity包city.xml里的getAllCity配置 返回List类型的数据
	public List<City> getAllCity();

	// 按照City类里面的值精确查询 调用entity包city.xml里的getCityByCond配置 返回List类型的数据
	public List<City> getCityByCond(City city);

	// 按照City类里面的值模糊查询 调用entity包city.xml里的getCityByLike配置 返回List类型的数据
	public List<City> getCityByLike(City city);

	// 按主键查询表返回单一的City实例 调用entity包city.xml里的getCityById配置
	public City getCityById(String cityid);

}
