package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.FilmDAO;
import com.entity.Film;
import com.service.FilmService;

@Service("filmService")
public class FilmServiceImpl implements FilmService {
	@Autowired
	@Resource
	private FilmDAO filmDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertFilm(Film film) {
		return this.filmDAO.insertFilm(film);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateFilm(Film film) {
		return this.filmDAO.updateFilm(film);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteFilm(String filmid) {
		return this.filmDAO.deleteFilm(filmid);
	}

	@Override // 继承接口的查询全部
	public List<Film> getAllFilm() {
		return this.filmDAO.getAllFilm();
	}

	@Override // 继承接口的查询全部
	public List<Film> getFilmByHot() {
		return this.filmDAO.getFilmByHot();
	}

	@Override // 继承接口的查询全部
	public List<Film> getFilmByNews() {
		return this.filmDAO.getAllFilm();
	}

	@Override // 继承接口的查询全部
	public List<Film> getFilmByCate(String cateid) {
		return this.filmDAO.getFilmByCate(cateid);
	}

	@Override // 继承接口的按条件精确查询
	public List<Film> getFilmByCond(Film film) {
		return this.filmDAO.getFilmByCond(film);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Film> getFilmByLike(Film film) {
		return this.filmDAO.getFilmByLike(film);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Film getFilmById(String filmid) {
		return this.filmDAO.getFilmById(filmid);
	}

}
