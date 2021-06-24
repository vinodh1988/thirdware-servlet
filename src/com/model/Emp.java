package com.model;

public class Emp {
  private int eno;
  private String name;
  private String city;
  private int departmentno;
public Emp(int eno, String name, String city, int departmentno) {
	super();
	this.eno = eno;
	this.name = name;
	this.city = city;
	this.departmentno = departmentno;
}
  
  public Emp() {}

public int getEno() {
	return eno;
}

public void setEno(int eno) {
	this.eno = eno;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public int getDepartmentno() {
	return departmentno;
}

public void setDepartmentno(int departmentno) {
	this.departmentno = departmentno;
}
  
  
}
