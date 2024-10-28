package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Cinema;

@Repository("cinemaDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface CinemaDAO {

	/**
	 * CinemaDAO 接口 可以按名称直接调用cinema.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包cinema.xml里的insertCinema配置 返回值0(失败),1(成功)
	public int insertCinema(Cinema cinema);

	// 更新数据 调用entity包cinema.xml里的updateCinema配置 返回值0(失败),1(成功)
	public int updateCinema(Cinema cinema);

	// 删除数据 调用entity包cinema.xml里的deleteCinema配置 返回值0(失败),1(成功)
	public int deleteCinema(String cinemaid);

	// 查询全部数据 调用entity包cinema.xml里的getAllCinema配置 返回List类型的数据
	public List<Cinema> getAllCinema();

	// 按照Cinema类里面的值精确查询 调用entity包cinema.xml里的getCinemaByCond配置 返回List类型的数据
	public List<Cinema> getCinemaByCond(Cinema cinema);

	// 按照Cinema类里面的值模糊查询 调用entity包cinema.xml里的getCinemaByLike配置 返回List类型的数据
	public List<Cinema> getCinemaByLike(Cinema cinema);

	// 按主键查询表返回单一的Cinema实例 调用entity包cinema.xml里的getCinemaById配置
	public Cinema getCinemaById(String cinemaid);

}
