package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProjectDAO {
	private final static Connection connection=SqlServerConnection.getConnection();
	 public static List<Dept> getDepts(){
		 
			
		 try      {
		 	        List<Dept> l=new ArrayList<Dept>();
		 		    ResultSet rs=connection.createStatement().executeQuery("select * from dept");
		 		    while(rs.next()) {
		 		    	Dept p=new Dept(rs.getInt(1),rs.getString(2));
		 		    	l.add(p);
		 		    }
		 		    
		 		    return l;
		 		}
		 		catch(SQLException e) {
		 			e.printStackTrace();
		 			return null;
		 		}
	 }
	 
	 public static boolean insert(Emp e) {
			try {
				
				PreparedStatement preparedStatement=connection.prepareStatement("insert into emp values(?,?,?,?)");
				preparedStatement.setInt(1, e.getEno());
				preparedStatement.setString(2, e.getName());
				preparedStatement.setString(3, e.getCity());
				preparedStatement.setInt(4, e.getDepartmentno());
				preparedStatement.execute();
				return true;
			}
			catch(SQLException z) {
				z.printStackTrace();
				return false;
			}
		} 
		

}
