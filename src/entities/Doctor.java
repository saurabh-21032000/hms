package entities;

public class Doctor {
	private String name;
	private String email;
	private String phone;
	private String gender;
	private String speciality;
	private String experience;
	private String rating;
	
	
	public Doctor() {
	}

	public Doctor(String name, String email, String phone, String gender, String speciality, String experience, String rating) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.speciality = speciality;
		this.experience = experience;
		this.rating = rating;
	}


//	public String getGender() {
//		return this.gender;
//	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return this.name;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getGender() {
		// TODO Auto-generated method stub
		return this.gender;
	}
	
	
	
}
