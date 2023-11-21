package chapter11_1;

public class Guest {
	
	//멤버변수=필드
	private String name;
	private String gender;
	
	public String getPoint() {
		return Guide.point;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	

}
