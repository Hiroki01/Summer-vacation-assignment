package adminDTO;

public class AdminDTO {
	private int id;
	private String name;
	private String email;
	private String pass;

	public AdminDTO(int id2, String name2, String email2, String pass2) {
		this.id = id2;
		this.name = name2;
		this.email = email2;
		this.pass = pass2;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
