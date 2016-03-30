package com.fjr.struts.password;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	private String username;
	private String password;
	private String confirmPassword;
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	//business logic
	public String execute() {
		return "SUCCESS";
	}

	//simple validation
	public void validate(){
		if("".equals(getUsername())){
			addFieldError("username", getText("username.required"));
		}
		if("".equals(getPassword())){
			addFieldError("password", getText("password.required"));
		}
		if("".equals(getConfirmPassword())){
			addFieldError("confirmPassword", getText("cpassword.required"));
		}
		
		if(!(getPassword().equals(getConfirmPassword()))){
			addFieldError("confirmPassword", getText("cpassword.notmatch"));
		}
	}

}