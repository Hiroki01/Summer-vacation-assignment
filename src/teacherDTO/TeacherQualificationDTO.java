package teacherDTO;

public class TeacherQualificationDTO {
	private int id;
	private String name;
	private String date;
	private int sid;
	private String sname;
	private String depart;
	private String school;
	private String set;
	private String result;

	public TeacherQualificationDTO(int id, String name, String date, int sid, String result) {
		this.id = id;
		this.name = name;
		this.date = date;
		this.sid = sid;
		this.result = result;
	}

	public TeacherQualificationDTO(int id2, String name2, String date2, String sname, String result2) {
		this.id = id2;
		this.name = name2;
		this.date = date2;
		this.sname = sname;
		this.result = result2;
	}

	public TeacherQualificationDTO(int id2, String name2, String date2, String sname2, String depart, String school,
			String set, String result2) {
		this.id = id2;
		this.name = name2;
		this.date = date2;
		this.sname = sname2;
		this.depart = depart;
		this.school = school;
		this.set = set;
		this.result = result2;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getSet() {
		return set;
	}

	public void setSet(String set) {
		this.set = set;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
