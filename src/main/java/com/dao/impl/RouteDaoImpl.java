package com.dao.impl;

import java.util.List;

import com.dao.RouteDao;
import com.domain.Route;

public class RouteDaoImpl extends BaseDaoImpl<Route> implements RouteDao {
	@Override
	public List<Object[]> getStByRoId(int id) {
		return getBySql("select stations_id,sequence from route_station where route_id = "+id);
	}

	@Override
	public List<Route> getByName(String name) {
		return find("select en from "
				+ Route.class.getSimpleName() + " en where en.route_name="+name);
	}

	
}
