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

public class StationAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private StationService stationService;
	private RouteService routeService;
	private Station station;
	private List<Station> stations;
	private List<Route> routes;
	private int st_id;
	private String st_name;
	private String start,destination;
	private Map<Route,List<Station>> map;
	private Route route;
	private List<String> result;//ajax技术实现的补全提示

	public String add(){
		int result = stationService.addStation(station);
		if (result>0) {
			return SUCCESS;
		}
		return ERROR;
	}

	public String list(){
		setStations(stationService.getAllStations());
		return SUCCESS;
	}

	public String delete(){
		stationService.delStation(st_id);
		return SUCCESS;
	}

	//根据站点名称得到详情
	public String getStByName(){
		station = stationService.getByName(st_name);
		if (station == null) {
			return NONE;
		}
		routes = getRoBySt(station);
		return SUCCESS;
	}

	//两站点查询查询
	public String transfer(){
		long begin = System.currentTimeMillis();
		Station st1 = stationService.getByName(start);
		Station st2 = stationService.getByName(destination);
		map = new LinkedHashMap<>();
		//无需换乘查询
		map.putAll(transOnce(st1,st2));
		//换乘一次查询
		if (map.isEmpty()) {
			map.putAll(transTwice(st1, st2));			
		}
		//换乘两次查询
		if (map.isEmpty()) {
			map.putAll(transTrice(st1, st2));
		}
		if (map.isEmpty()) {
			return ERROR;
		}else {
			System.out.println("=========此次查询共耗时"+(System.currentTimeMillis()-begin)+"毫秒");
			return SUCCESS;
		}
	}
	
	//换乘两次
	public Map<Route, List<Station>> transTrice(Station st1,Station st2){
		List<Route> routes = getRoBySt(st1);
		List<Station> stations = new ArrayList<>();//存放一次能到的站点
		Map<Route, List<Station>> map = new LinkedHashMap<>();
		Map<Route, List<Station>> temp;
		for (int i = 0; i < routes.size(); i++) {
			stations = getLaterSts(routes.get(i), st1);
			for (int j = 0; j < stations.size(); j++) {
				temp = transTwice(stations.get(j), st2);
				if (!temp.isEmpty()) {
					map.putAll(transOnce(st1, stations.get(j)));
					map.putAll(transTwice(stations.get(j), st2));
					return map;
				}
			}
		}
		return map;
	}

	//换乘一次
	public Map<Route, List<Station>> transTwice(Station st1,Station st2){
		List<Route> routes = getRoBySt(st1);
		List<Station> stations = new ArrayList<>();//存放一次能到的站点
		Map<Route, List<Station>> map = new LinkedHashMap<>();
		Map<Route, List<Station>> temp = new LinkedHashMap<>();
		for (int i = 0; i < routes.size(); i++) {
			stations = getLaterSts(routes.get(i), st1);
			//对一次能到的站遍历，寻找这些站中有没有能一次到终点站的
			for (int j = 0; j < stations.size(); j++) {
				temp = transOnce(stations.get(j), st2);
				if (!temp.isEmpty()) {
					map.putAll(transOnce(st1, stations.get(j)));
					map.putAll(temp);
					return map;
				}
			}
		}
		return map;
	}

	//只计算无需换乘的方法
	public Map<Route, List<Station>> transOnce(Station st1,Station st2){
		List<Route> routes = getRoBySt(st1);
		List<Station> stations = new ArrayList<>();//存放一次能到的站点
		Map<Route, List<Station>> map = new LinkedHashMap<>();
		for (int i = 0; i < routes.size(); i++) {
			stations = getLaterSts(routes.get(i), st1);
			for (int j = 0; j < stations.size(); j++) {
				if (st2.getSt_name().equals(stations.get(j).getSt_name())) {
					map.put(routes.get(i), stationService.getBetween(routes.get(i), st1, st2));
				}
			}
		}
		return map;
	}

	//得到该线路该车站之后的每个车站
	public List<Station> getLaterSts(Route ro,Station st){
		//车站在路线的序号
		int sequence = stationService.getSequence(st.getSt_id(), ro.getRoute_id());
		//这条路线在这个序号之后的车站序号
		List<Integer> pl = stationService.getLaterStations(ro.getRoute_id(), sequence);
		List<Station> sts = new ArrayList<>();
		for (int i = 0; i < pl.size(); i++) {
			sts.add(stationService.getById(pl.get(i)));
		}
		return sts;
	}

	public String getRoByStation(){
		station = stationService.getById(st_id);
		routes = getRoBySt(station);
		return SUCCESS;
	}
	
	//得到该车站所有经过的线路
	public List<Route> getRoBySt(Station st){
		List<Integer> pl = stationService.getRoBySt(st.getSt_id());
		List<Route> r = new ArrayList<>();
		for (int i = 0; i < pl.size(); i++) {
			r.add(routeService.getById(pl.get(i)));
		}
		return r;
	}

	//根据传来的st_id和st_name修改station
	public String updateStation(){
		station = stationService.getById(st_id);
		station.setSt_name(st_name);
		stationService.updateStation(station);
		return SUCCESS;
	}

	//ajax
	public String autoAssist(){
		result = stationService.autoAssist(st_name);
		System.out.println(result);
		if (result.size()>10) {
			return ERROR;
		}
		return SUCCESS;
	}

	public String lookForStation(){
		return SUCCESS;
	}

	public List<Route> getRoutes() {
		return routes;
	}

	public void setRoutes(List<Route> routes) {
		this.routes = routes;
	}

	public RouteService getRouteService() {
		return routeService;
	}

	public void setRouteService(RouteService routeService) {
		this.routeService = routeService;
	}

	public String getSt_name() {
		return st_name;
	}

	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}

	public StationService getStationService() {
		return stationService;
	}
	public void setStationService(StationService stationService) {
		this.stationService = stationService;
	}
	public Station getStation() {
		return station;
	}
	public void setStation(Station station) {
		this.station = station;
	}
	public List<Station> getStations() {
		return stations;
	}
	public void setStations(List<Station> stations) {
		this.stations = stations;
	}
	public int getSt_id() {
		return st_id;
	}
	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	public Map<Route, List<Station>> getMap() {
		return map;
	}

	public void setMap(Map<Route, List<Station>> map) {
		this.map = map;
	}

	public List<String> getResult() {
		return result;
	}

	public void setResult(List<String> result) {
		this.result = result;
	}

}