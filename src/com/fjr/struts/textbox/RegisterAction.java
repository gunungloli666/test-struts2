package com.fjr.struts.textbox;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userxname;

	public String getUsernamey() {
		return userxname;
	}

	public void setUsernamex(String username) {
		this.userxname = username;
	}

	//business logic
	public String execute() {

		return "SUCCESS";

	}

	//simple validation
	public void validate(){
		if("".equals(getUsernamey())){
			addFieldError("username", getText("username.required"));
		}
	}
	
	
}
