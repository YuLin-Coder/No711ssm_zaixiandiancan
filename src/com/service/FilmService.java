package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Film;

@Service("filmService")
public interface FilmService {
	// 插入数据 调用filmDAO里的insertFilm配置
	public int insertFilm(Film film);

	// 更新数据 调用filmDAO里的updateFilm配置
	public int updateFilm(Film film);

	// 删除数据 调用filmDAO里的deleteFilm配置
	public int deleteFilm(String filmid);

	// 查询全部数据 调用filmDAO里的getAllFilm配置
	public List<Film> getAllFilm();

	public List<Film> getFilmByHot();

	public List<Film> getFilmByNews();

	public List<Film> getFilmByCate(String cateid);

	// 按照Film类里面的字段名称精确查询 调用filmDAO里的getFilmByCond配置
	public List<Film> getFilmByCond(Film film);

	// 按照Film类里面的字段名称模糊查询 调用filmDAO里的getFilmByLike配置
	public List<Film> getFilmByLike(Film film);

	// 按主键查询表返回单一的Film实例 调用filmDAO里的getFilmById配置
	public Film getFilmById(String filmid);

}
