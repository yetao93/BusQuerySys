package com.service.impl;

import java.util.ArrayList;
import java.util.List;
import com.dao.StationDao;
import com.domain.Route;
import com.domain.Station;
import com.service.StationService;

public class StationServiceImpl implements StationService {
	private StationDao stationDao;
	
	public void setStationDao(StationDao stationDao) {
		this.stationDao = stationDao;
	}

	@Override
	public int addStation(Station station) {
		if (stationDao.getByName(station.getSt_name())!=null) {
			return 0;
		}
		return (int) stationDao.save(station);
	}

	@Override
	public List<Station> getAllStations() {
		return stationDao.findAll(Station.class);
	}

	@Override
	public void delStation(int id) {
		stationDao.deleteById(Station.class, id);
	}

	@Override
	public Station getByName(String name) {
		return stationDao.getByName(name);
	}

	@Override
	public Station getById(int id) {
		return stationDao.getById(Station.class, id);
	}

	@Override
	public List<Integer> getRoBySt(int id) {
		return stationDao.getRoById(id);
	}

	@Override
	public void updateStation(Station station) {
		stationDao.update(station);
	}

	@Override
	public int getSequence(int st_id, int ro_id) {
		return stationDao.getSequence(st_id, ro_id);
	}

	//得到该路线该序号之后的站点id
	public List<Integer> getLaterStations(int ro_id, int sequence) {
		return stationDao.getLaterStations(ro_id, sequence);
	}

	//得到两个站点之间的所有站，包括它们自己
	public List<Station> getBetween(Route route,Station st1, Station st2) {
		int ro = route.getRoute_id();
		int sq1 = getSequence(st1.getSt_id(), ro);
		int sq2 = getSequence(st2.getSt_id(), ro);
		List<Integer> integers = stationDao.getBetween(ro, sq1, sq2);
		List<Station> stations = new ArrayList<>();
		for (int i = 0; i < integers.size(); i++) {
			stations.add(getById(integers.get(i)));
		}
		return stations;
	}

	@Override
	public List<String> autoAssist(String msg) {
		return stationDao.autoAssist(msg);
	}



}
