package entities;
public class Employee {
	
	private int id;
	private String name;
	private String NIC;
	private String department;
	private String designation;
	private String joined_date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNIC() {
		return NIC;
	}
	public void setNIC(String nIC) {
		NIC = nIC;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getJoined_date() {
		return joined_date;
	}
	public void setJoined_date(String joined_date) {
		this.joined_date = joined_date;
	}
	public Employee() {
		name = "";
		NIC = "";
		department= "";
		designation = "";
	}

}
