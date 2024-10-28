package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Film;

@Repository("filmDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface FilmDAO {

	/**
	 * FilmDAO 接口 可以按名称直接调用film.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包film.xml里的insertFilm配置 返回值0(失败),1(成功)
	public int insertFilm(Film film);

	// 更新数据 调用entity包film.xml里的updateFilm配置 返回值0(失败),1(成功)
	public int updateFilm(Film film);

	// 删除数据 调用entity包film.xml里的deleteFilm配置 返回值0(失败),1(成功)
	public int deleteFilm(String filmid);

	// 查询全部数据 调用entity包film.xml里的getAllFilm配置 返回List类型的数据
	public List<Film> getAllFilm();

	public List<Film> getFilmByHot();

	public List<Film> getFilmByNews();

	public List<Film> getFilmByCate(String cateid);

	// 按照Film类里面的值精确查询 调用entity包film.xml里的getFilmByCond配置 返回List类型的数据
	public List<Film> getFilmByCond(Film film);

	// 按照Film类里面的值模糊查询 调用entity包film.xml里的getFilmByLike配置 返回List类型的数据
	public List<Film> getFilmByLike(Film film);

	// 按主键查询表返回单一的Film实例 调用entity包film.xml里的getFilmById配置
	public Film getFilmById(String filmid);

}
