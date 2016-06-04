package com.service.impl;

import java.util.List;

import com.dao.RouteDao;
import com.domain.Route;
import com.service.RouteService;

public class RouteServiceImpl implements RouteService{
	private RouteDao routeDao;

	public void setRouteDao(RouteDao routeDao) {
		this.routeDao = routeDao;
	}

	@Override
	public int addRoute(Route route) {
		// TODO Auto-generated method stub
		return (int) routeDao.save(route);
	}

	@Override
	public void delRoute(int id) {
		routeDao.deleteById(Route.class, id);

	}

	@Override
	public List<Route> getAllRoutes() {
		return routeDao.findAll(Route.class);
	}

	//根据线路ID得到沿线站点
	public List<Object[]> getStByRoId(int id){
		return routeDao.getStByRoId(id);
	}

	//根据ID加载实体
	public Route getById(int id) {
		return routeDao.getById(Route.class, id);
	}

	//根据名称加载实体
	public List<Route> getByName(String name) {
		List<Route> routes = routeDao.getByName(name);
		if (routes.size()==0) {
			routes = null;
		}
		return routes;			

	}

	//更新实体
	public void updateRoute(Route route) {
		routeDao.update(route);
	}

}
