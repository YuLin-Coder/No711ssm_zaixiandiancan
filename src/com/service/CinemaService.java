package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Cinema;

@Service("cinemaService")
public interface CinemaService {
	// 插入数据 调用cinemaDAO里的insertCinema配置
	public int insertCinema(Cinema cinema);

	// 更新数据 调用cinemaDAO里的updateCinema配置
	public int updateCinema(Cinema cinema);

	// 删除数据 调用cinemaDAO里的deleteCinema配置
	public int deleteCinema(String cinemaid);

	// 查询全部数据 调用cinemaDAO里的getAllCinema配置
	public List<Cinema> getAllCinema();

	// 按照Cinema类里面的字段名称精确查询 调用cinemaDAO里的getCinemaByCond配置
	public List<Cinema> getCinemaByCond(Cinema cinema);

	// 按照Cinema类里面的字段名称模糊查询 调用cinemaDAO里的getCinemaByLike配置
	public List<Cinema> getCinemaByLike(Cinema cinema);

	// 按主键查询表返回单一的Cinema实例 调用cinemaDAO里的getCinemaById配置
	public Cinema getCinemaById(String cinemaid);

}
