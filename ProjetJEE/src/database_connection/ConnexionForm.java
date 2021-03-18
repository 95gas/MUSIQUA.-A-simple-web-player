package database_connection;

import javax.servlet.http.HttpServletRequest;

public class ConnexionForm {
	
	private String result;

	public ConnexionForm() {};
	public ConnexionForm(String result) {
		super();
		this.result = result;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public void authentification(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		/*
		if() {
			
		}
		else if() {
			
		}
		else {
			
		}
		*/
	}

}
