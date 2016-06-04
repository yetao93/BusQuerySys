package com.action;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.domain.Route;
import com.domain.Station;
import com.opensymphony.xwork2.ActionSupport;
import com.service.RouteService;
import com.service.StationService;

public class RouteAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private RouteService routeService;
	private StationService stationService;
	private Route route;
	private int route_id;
	private List<Route> routes;
	private List<Station> stations;
	private String[] st_names;
	private String st_name;
	private Map<Route, List<Station>> ros1;
	private Map<Route, List<Station>> ros2;

	public String add(){
		for(int i = 0;i<st_names.length;i++){
			route.getStations().add(stationService.getByName(st_names[i]));
		}
		String fe = "("+st_names[0]+" — "+st_names[st_names.length-1]+")";
		route.setFe(fe);
		int result = routeService.addRoute(route);
		if (result>0) {
			return SUCCESS;
		}
		return ERROR;
	}

	public String delete(){
		routeService.delRoute(route_id);
		return SUCCESS;
	}

	public String list() {
		setRoutes(routeService.getAllRoutes());
		return SUCCESS;
	}

	//根据线路id得到详情
	public String getStByRoId(){
		route = routeService.getById(route_id);
		stations = getSts(route);
		return SUCCESS;
	}

	//根据名称得到往返的两条线路的详情
	public String getRoByName(){
		routes = routeService.getByName(route.getRoute_name());
		if (routes==null) {
			return NONE;
		}
		ros1 = new LinkedHashMap<>();
		ros2 = new LinkedHashMap<>();
		List<Station> stations0 = getSts(routes.get(0));
		List<Station> stations1 = getSts(routes.get(1));
		ros1.put(routes.get(0),stations0);
		ros1.put(routes.get(1),stations1);
		return SUCCESS;
	}

	//修改线路信息
	public String updateRoute(){
		for(int i = 0;i<st_names.length;i++){
			route.getStations().add(stationService.getByName(st_names[i]));
		}
		routeService.updateRoute(route);
		return SUCCESS;
	}

	//列出线路的信息以供修改
	public String queryAndUpdate(){
		route = routeService.getById(route_id);
		stations = getSts(route);
		return SUCCESS;
	}

	//根据线路id按顺序得到沿线站点
	public List<Station> getSts(Route route){
		List<Object[]> pl = routeService.getStByRoId(route.getRoute_id());
		List<Station> stations = new ArrayList<>();
		for(int i = 0;i<pl.size();i++){
			Object[] objs =  pl.get(i);
			stations.add(stationService.getById((int)objs[0]));
		}
		return stations;
	}


	public RouteService getRouteService() {
		return routeService;
	}

	public StationService getStationService() {
		return stationService;
	}

	public void setStationService(StationService stationService) {
		this.stationService = stationService;
	}

	public String[] getSt_names() {
		return st_names;
	}

	public void setSt_names(String[] st_names) {
		this.st_names = st_names;
	}

	public void setRouteService(RouteService routeService) {
		this.routeService = routeService;
	}

	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	public List<Route> getRoutes() {
		return routes;
	}

	public void setRoutes(List<Route> routes) {
		this.routes = routes;
	}

	public int getRoute_id() {
		return route_id;
	}

	public void setRoute_id(int route_id) {
		this.route_id = route_id;
	}

	public String getSt_name() {
		return st_name;
	}

	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	public List<Station> getStations() {
		return stations;
	}

	public void setStations(List<Station> stations) {
		this.stations = stations;
	}

	public Map<Route, List<Station>> getRos1() {
		return ros1;
	}

	public void setRos1(Map<Route, List<Station>> ros1) {
		this.ros1 = ros1;
	}

	public Map<Route, List<Station>> getRos2() {
		return ros2;
	}

	public void setRos2(Map<Route, List<Station>> ros2) {
		this.ros2 = ros2;
	}


}
