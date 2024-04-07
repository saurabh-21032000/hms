package entities;

import Enum.Gender;
import Enum.Role;

public class Signup {
	private String name;
	private String pass;
	private String email;
	private String phone;
	private Gender gender;
	private Role role;
	
	public Signup(){
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public Signup(String name, String pass, String email, String phone, Gender gender, Role role) {
		super();
		this.name = name;
		this.pass = pass;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.role = role;
	}
	
	
	
}
