package commonDTO;

public class LoginDTO {
	private int id;
	private String pass;

	public LoginDTO(int id, String pass) {
		this.id = id;
		this.pass = pass;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
