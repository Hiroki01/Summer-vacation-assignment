package dto;

public class StudentDTO {
	private int id;
	private String name;
	private String namek;
	private String gender;
	private String email;
	private String department;
	private String course;
	private String school_year;
	private String set_in;
	private String pass;

	public StudentDTO(int id, String name, String namek, String gender, String email, String department, String course,
			String school_year, String set_in, String pass) {
		this.id = id;
		this.name = name;
		this.namek = namek;
		this.gender = gender;
		this.email = email;
		this.department = department;
		this.course = course;
		this.school_year = school_year;
		this.set_in = set_in;
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

	public String getNamek() {
		return namek;
	}

	public void setNamek(String namek) {
		this.namek = namek;
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

	public String getSchool_year() {
		return school_year;
	}

	public void setSchool_year(String school_year) {
		this.school_year = school_year;
	}

	public String getSet_in() {
		return set_in;
	}

	public void setSet_in(String set_in) {
		this.set_in = set_in;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}


}
