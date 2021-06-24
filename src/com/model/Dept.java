package com.model;

public class Dept {
  private int departmentno;
  private String name;
public Dept() {
	super();
}


public Dept(int departmentno, String name) {
	super();
	this.departmentno = departmentno;
	this.name = name;
}


public int getDepartmentno() {
	return departmentno;
}
public void setDepartmentno(int departmentno) {
	this.departmentno = departmentno;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
  
  
}
