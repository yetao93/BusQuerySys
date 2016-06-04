package com.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;

import com.dao.StationDao;
import com.domain.Station;

public class StationDaoImpl extends BaseDaoImpl<Station> implements StationDao{
	// DAO组件进行持久化操作底层依赖的SessionFactory组件
	private SessionFactory sessionFactory;
	// 依赖注入SessionFactory所需的setter方法
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory()
	{
		return this.sessionFactory;
	}

	@Override
	public List<Station> findAll(Class<Station> entityClazz) {
		return find("select en from "
				+ entityClazz.getSimpleName() + " en order by en.id");
	}

	@SuppressWarnings("unchecked")
	@Override
	//根据站点id得到所有经过的线路的id
	public List<Integer> getRoById(int id) {
		String sql = "select route_id from route_station where stations_id="+id;
		return sessionFactory.getCurrentSession().createSQLQuery(sql).list();
	}
	
	@Override
	public Station getByName(String name) {
		List<Station> st = find("select en from "
				+ Station.class.getSimpleName() + " en where en.st_name='"+name+"'");
		if (st.size()>0) {
			return st.get(0);
		}
		return null;
	}
	
	//根据站点id和线路id，得到该站点是该线路的第几站
	public int getSequence(int st_id, int ro_id) {
		String sql = "select sequence from route_station "
				+ "where route_id="+ro_id+" and stations_id="+st_id;
		return (int) sessionFactory.getCurrentSession().createSQLQuery(sql).list().get(0);
	}
	
	@SuppressWarnings("unchecked")
	//根据站点线路Id和顺序，得到该线路的该顺序之后的所有车站id
	public List<Integer> getLaterStations(int ro_id, int sequence) {
		String sql = "select stations_id from route_station where "
				+ "route_id="+ro_id+" and sequence > "+sequence;
		return sessionFactory.getCurrentSession().createSQLQuery(sql).list();
	}
	
	@SuppressWarnings("unchecked")
	//得到该线路两个序号之间的所有站
	public List<Integer> getBetween(int route, int sq1, int sq2) {
		String sql = "select stations_id from route_station where "
				+ "route_id= "+route+" and sequence between "+sq1+" and "+sq2;
		return sessionFactory.getCurrentSession().createSQLQuery(sql).list();
	}
	
	@SuppressWarnings("unchecked")
	public List<String> autoAssist(String msg) {
		String sql = "select name from station where name like '"+msg+"%'";
		return sessionFactory.getCurrentSession().createSQLQuery(sql).list();
	}

}
