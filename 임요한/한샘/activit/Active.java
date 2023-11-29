package activity;

import java.awt.Image;

public class Active {
	public String name;
	public int dateNumber;
	public Image image;
	
	
	public Active(String name, int dateNumber) {
		this.name = name;
		this.dateNumber = dateNumber;
	}


	@Override
	public String toString() {
		return dateNumber + " 일에 " +name + " 활동 입니다. ";
	}
	
	
}
