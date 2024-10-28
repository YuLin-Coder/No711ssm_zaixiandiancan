package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.CinemaDAO;
import com.entity.Cinema;
import com.service.CinemaService;

@Service("cinemaService")
public class CinemaServiceImpl implements CinemaService {
	@Autowired
	@Resource
	private CinemaDAO cinemaDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertCinema(Cinema cinema) {
		return this.cinemaDAO.insertCinema(cinema);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateCinema(Cinema cinema) {
		return this.cinemaDAO.updateCinema(cinema);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteCinema(String cinemaid) {
		return this.cinemaDAO.deleteCinema(cinemaid);
	}

	@Override // 继承接口的查询全部
	public List<Cinema> getAllCinema() {
		return this.cinemaDAO.getAllCinema();
	}

	@Override // 继承接口的按条件精确查询
	public List<Cinema> getCinemaByCond(Cinema cinema) {
		return this.cinemaDAO.getCinemaByCond(cinema);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Cinema> getCinemaByLike(Cinema cinema) {
		return this.cinemaDAO.getCinemaByLike(cinema);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Cinema getCinemaById(String cinemaid) {
		return this.cinemaDAO.getCinemaById(cinemaid);
	}

}
