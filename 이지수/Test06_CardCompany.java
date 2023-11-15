package java1115;

public class Test06_CardCompany {

	private static Test06_CardCompany instance = new Test06_CardCompany();
	private Test06_CardCompany() {
		
	}
	
	public static Test06_CardCompany getInstance() {
		if(instance == null) {
			instance = new Test06_CardCompany();
		}
		return instance;
	}
}
