package week7;

public class Login {
	String login;
	String name;
	String password;
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int isRight() {
		
			
		int num=0;
		if(login!=null) {
			
		if(login.equals("admin")) {
			if(name.equals("admin")&&password.equals("admin")) {
				num=1;
			}
		}
		
		else if(login.equals("user")) {
			if(name.equals("user")&&password.equals("user")) {
				num=1;
			}
		}
		}
		
		return num;
		
		
	
	}
	
}
