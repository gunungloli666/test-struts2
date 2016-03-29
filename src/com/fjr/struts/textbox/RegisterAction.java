package com.fjr.struts.textbox;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;

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
	}
	
	
}
