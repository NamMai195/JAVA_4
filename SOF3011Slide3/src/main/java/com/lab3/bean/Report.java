package com.lab3.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;

@NamedStoredProcedureQueries({  
	@NamedStoredProcedureQuery(name = "Report.favoriteByYear",    
			procedureName = "spFavoriteByYear",
			resultClasses = {Report.class},
			parameters = @StoredProcedureParameter(name="year", type = Integer.class)    
	) 
}) 

@Entity
public class Report {
	@Id
	String group;
	Long likes;
	Date newest;
	Date oldest;
	public Report() {
		// TODO Auto-generated constructor stub
	}
	public Report(String group, Long likes, Date newest, Date oldest) {
		super();
		this.group = group;
		this.likes = likes;
		this.newest = newest;
		this.oldest = oldest;
	}
	public Serializable getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public Date getNewest() {
		return newest;
	}
	public void setNewest(Date newest) {
		this.newest = newest;
	}
	public Date getOldest() {
		return oldest;
	}
	public void setOldest(Date oldest) {
		this.oldest = oldest;
	}
	
}