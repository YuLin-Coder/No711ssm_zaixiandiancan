package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Film;
import com.service.FilmService;
import com.entity.Cate;
import com.service.CateService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/film", produces = "text/plain;charset=utf-8")
public class FilmAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private FilmService filmService;
	@Autowired
	@Resource
	private CateService cateService;

	// 准备添加数据
	@RequestMapping("createFilm.action")
	public String createFilm() {
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		return "admin/addfilm";
	}

	// 添加数据
	@RequestMapping("addFilm.action")
	public String addFilm(Film film) {
		film.setHits("0");
		film.setSellnum("0");
		this.filmService.insertFilm(film);
		return "redirect:/film/createFilm.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteFilm.action")
	public String deleteFilm(String id) {
		this.filmService.deleteFilm(id);
		return "redirect:/film/getAllFilm.action";
	}

	// 批量删除数据
	@RequestMapping("deleteFilmByIds.action")
	public String deleteFilmByIds() {
		String[] ids = this.getRequest().getParameterValues("filmid");
		for (String filmid : ids) {
			this.filmService.deleteFilm(filmid);
		}
		return "redirect:/film/getAllFilm.action";
	}

	// 更新数据
	@RequestMapping("updateFilm.action")
	public String updateFilm(Film film) {
		this.filmService.updateFilm(film);
		return "redirect:/film/getAllFilm.action";
	}

	// 显示全部数据
	@RequestMapping("getAllFilm.action")
	public String getAllFilm(String number) {
		List<Film> filmList = this.filmService.getAllFilm();
		PageHelper.getPage(filmList, "film", null, null, 10, number, this.getRequest(), null);
		return "admin/listfilm";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryFilmByCond.action")
	public String queryFilmByCond(String cond, String name, String number) {
		Film film = new Film();
		if (cond != null) {
			if ("filmname".equals(cond)) {
				film.setFilmname(name);
			}
			if ("image".equals(cond)) {
				film.setImage(name);
			}
			if ("cateid".equals(cond)) {
				film.setCateid(name);
			}
			if ("price".equals(cond)) {
				film.setPrice(name);
			}
			if ("recommend".equals(cond)) {
				film.setRecommend(name);
			}
			if ("thestart".equals(cond)) {
				film.setThestart(name);
			}
			if ("theend".equals(cond)) {
				film.setTheend(name);
			}
			if ("hits".equals(cond)) {
				film.setHits(name);
			}
			if ("sellnum".equals(cond)) {
				film.setSellnum(name);
			}
			if ("contents".equals(cond)) {
				film.setContents(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.filmService.getFilmByLike(film), "film", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryfilm";
	}

	// 按主键查询数据
	@RequestMapping("getFilmById.action")
	public String getFilmById(String id) {
		Film film = this.filmService.getFilmById(id);
		this.getRequest().setAttribute("film", film);
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		return "admin/editfilm";
	}

	public FilmService getFilmService() {
		return filmService;
	}

	public void setFilmService(FilmService filmService) {
		this.filmService = filmService;
	}

}
