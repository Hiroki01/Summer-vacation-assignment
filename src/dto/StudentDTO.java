package dto;

public class StudentDTO {
	private int id;
	private String name;
	private String gender;
	private String email;
	private String department;
	private String course;
	private String qu;
	private String pass;

	public StudentDTO(int id, String name, String gender, String email, String department, String course, String qu,
			String pass) {
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.department = department;
		this.course = course;
		this.qu = qu;
		this.pass = pass;
	}

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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getQu() {
		return qu;
	}

	public void setQu(String qu) {
		this.qu = qu;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
