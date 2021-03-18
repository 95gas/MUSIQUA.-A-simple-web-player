package models;


public class User {

	private String username;
	private String firstname;
	private String lastname;
	private int birth_year;
	private int birth_month;
	private int birth_day;
	private String gender;
	private String country;
	private String city;
	private String street;
	private String street_number;
	private int postcode;
	private String email;
	private String psw;
	private String facetoken;
	private String appletoken;
	private String gmailtoken;
	private String role;
	
	public User(String username, String firstname, String lastname, int birth_year, int birth_month, int birth_day,
			String gender, String country, String city, String street, String street_number, int postcode, String email,
			String psw, String facetoken, String appletoken, String gmailtoken, String role) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birth_year = birth_year;
		this.birth_month = birth_month;
		this.birth_day = birth_day;
		this.gender = gender;
		this.country = country;
		this.city = city;
		this.street = street;
		this.street_number = street_number;
		this.postcode = postcode;
		this.email = email;
		this.psw = psw;
		this.facetoken = facetoken;
		this.appletoken = appletoken;
		this.gmailtoken = gmailtoken;
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getBirth_year() {
		return birth_year;
	}

	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}

	public int getBirth_month() {
		return birth_month;
	}

	public void setBirth_month(int birth_month) {
		this.birth_month = birth_month;
	}

	public int getBirth_day() {
		return birth_day;
	}

	public void setBirth_day(int birth_day) {
		this.birth_day = birth_day;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getStreet_number() {
		return street_number;
	}

	public void setStreet_number(String street_number) {
		this.street_number = street_number;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPsw() {
		return psw;
	}

	public void setPsw(String psw) {
		this.psw = psw;
	}

	public String getFacetoken() {
		return facetoken;
	}

	public void setFacetoken(String facetoken) {
		this.facetoken = facetoken;
	}

	public String getAppletoken() {
		return appletoken;
	}

	public void setAppletoken(String appletoken) {
		this.appletoken = appletoken;
	}

	public String getGmailtoken() {
		return gmailtoken;
	}

	public void setGmailtoken(String gmailtoken) {
		this.gmailtoken = gmailtoken;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
}