package Model;

public class User {
	public int id;
	public int type;
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String username;
	public String password;
	public String pingtaimc;
	public String pingtaibh;
	public String jsly;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPingtaimc() {
		return pingtaimc;
	}
	public void setPingtaimc(String pingtaimc) {
		this.pingtaimc = pingtaimc;
	}
	public String getPingtaibh() {
		return pingtaibh;
	}
	public void setPingtaibh(String pingtaibh) {
		this.pingtaibh = pingtaibh;
	}
	public String getJsly() {
		return jsly;
	}
	public void setJsly(String jsly) {
		this.jsly = jsly;
	}

}
