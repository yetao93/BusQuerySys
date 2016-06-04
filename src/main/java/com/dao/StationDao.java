package com.dao;

import java.util.List;

import com.domain.Station;

public interface StationDao extends BaseDao<Station>{
	//根据id加载所有经过线路
	List<Integer> getRoById(int id);
	Station getByName(String name);
	int getSequence(int st_id,int ro_id);
	List<Integer> getLaterStations(int ro_id,int sequence);
	List<Integer> getBetween(int route,int sq1,int sq2);
	List<String> autoAssist(String msg);
}
