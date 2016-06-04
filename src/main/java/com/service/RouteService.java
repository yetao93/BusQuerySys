package com.service;

import java.util.List;

import com.domain.Route;

public interface RouteService {
	int addRoute(Route route);
	void delRoute(int id);
	List<Route> getAllRoutes();
	List<Object[]> getStByRoId(int id);
	Route getById(int id);
	List<Route> getByName(String name);
	void updateRoute(Route route);
}
