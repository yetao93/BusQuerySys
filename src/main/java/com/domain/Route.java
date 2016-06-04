package com.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="route")
public class Route {
	@Id@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int route_id;
	@Column(name="name")
	private String route_name;
	@ElementCollection(targetClass=Station.class)
	@CollectionTable(name="route_station",joinColumns=@JoinColumn(name="route_id",nullable=false))
	@OrderColumn(name="sequence")
	private List<Station> stations = new ArrayList<Station>();
	@Column(name="period")
	private String route_period;
	private String fe;
	
	public int getRoute_id() {
		return route_id;
	}
	public void setRoute_id(int route_id) {
		this.route_id = route_id;
	}
	public String getRoute_name() {
		return route_name;
	}
	public void setRoute_name(String route_name) {
		this.route_name = route_name;
	}
	public List<Station> getStations() {
		return stations;
	}
	public void setStations(List<Station> stations) {
		this.stations = stations;
	}
	public String getRoute_period() {
		return route_period;
	}
	public void setRoute_period(String route_period) {
		this.route_period = route_period;
	}
	public String getFe() {
		return fe;
	}
	public void setFe(String fe) {
		this.fe = fe;
	}
}
