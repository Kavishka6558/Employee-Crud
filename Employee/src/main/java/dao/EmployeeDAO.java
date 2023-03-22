package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entities.Employee;
import utilities.MySQLConnect;

public class EmployeeDAO {

	private Connection con;
	public EmployeeDAO() {
		try {
			con=MySQLConnect.connectDB();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean insert(Employee st) {
		//insert command
		String query="INSERT INTO employee(name,nic,department,designation)"
				+ "VALUE('"+st.getName()+"','"+st.getNIC()+"','"+st.getDepartment()+"','"+st.getDesignation()+"')";
		try {
			
			Statement stmt=con.createStatement();
			int result= stmt.executeUpdate(query);
			if(result > 0) {
				return true;
			}else {
				return false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
				
	}
	
	public ArrayList<Employee> getAll(){
		ArrayList<Employee> employeeList=new ArrayList<Employee>();
		String query="SELECT * FROM employee";
		
		try {
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String nic=rs.getString("nic");
				String department=rs.getString("department");
				String designation=rs.getString("designation");
				
				Employee st=new Employee();
				
				st.setId(id);
				st.setName(name);
				st.setNIC(nic);
				st.setDepartment(department);
				st.setDesignation(designation);
				
				employeeList.add(st);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return employeeList;
		}
		return employeeList;
	}
	public Employee getEmployee(int id) {
		Employee st=new Employee();
		String query="SELECT * FROM employee WHERE id="+id;
		try {
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) {
				
				 id=rs.getInt("id");
				String name=rs.getString("name");
				String nic=rs.getString("nic");
				String department=rs.getString("department");
				String designation=rs.getString("designation");
				
				
				st.setId(id);
				st.setName(name);
				st.setNIC(nic);
				st.setDepartment(department);
				st.setDesignation(designation);
			}
			return st;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return st;
		}
		
	}
	
	public boolean update(Employee st) {
		String query = "UPDATE employee SET name='"+st.getName()+"',NIC='"+st.getNIC()+"',department='"+st.getDepartment()+"',designation='"+st.getDesignation()+"' WHERE id="+st.getId();
		try {
			Statement stmt=con.createStatement();
			int result= stmt.executeUpdate(query);
			if(result > 0) {
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	public boolean delete(int id) {
		String query="DELETE FROM employee WHERE id="+id;
		try {
			Statement stmt=con.createStatement();
			int result= stmt.executeUpdate(query);
			if(result > 0) {
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
