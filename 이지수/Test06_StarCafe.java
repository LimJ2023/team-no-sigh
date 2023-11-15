package java1115;

public class Test06_StarCafe {

	String cafeName;
	int money;
	int visitorCount;
	
	public Test06_StarCafe(String cafeName) {
		this.cafeName = cafeName;
	}
	
	public void take(int money) {
		this.money=money;
		visitorCount++;
	}
	
	public void showInfo() {
		System.out.println(cafeName + "의 손님은 총 " +visitorCount+" 명 이고, 수입은 " +money+" 원 입니다.");
	}
}
