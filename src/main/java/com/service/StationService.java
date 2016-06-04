package com.service;

import java.util.List;

import com.domain.Route;
import com.domain.Station;

public interface StationService {
	int addStation(Station station);
	List<Station> getAllStations();
	void delStation(int id);
	Station getByName(String name);
	Station getById(int id);
	List<Integer> getRoBySt(int id);
	void updateStation(Station station);
	int getSequence(int st_id,int ro_id);
	List<Integer> getLaterStations(int ro_id,int sequence);
	List<Station> getBetween(Route route,Station st1,Station st2);
	List<String> autoAssist(String msg);
}
