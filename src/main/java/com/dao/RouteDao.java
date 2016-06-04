package com.dao;

import java.util.List;

import com.domain.Route;

public interface RouteDao extends BaseDao<Route>{
	List<Object[]> getStByRoId(int id);
	List<Route> getByName(String name);
}
