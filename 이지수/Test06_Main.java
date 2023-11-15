package java1115;

public class Test06_Main {

	public static void main(String[] args) {
		Test06_customer cusKim = new Test06_customer("김", 30000);
		Test06_customer cusLee = new Test06_customer("이", 50000);
		
		Test06_StarCafe starCafe = new Test06_StarCafe("별다방");
		Test06_StarCafe beanCafe = new Test06_StarCafe("별다방");
		
		cusKim.takeStar(starCafe); 
		cusLee.takeBean(beanCafe);
		
		starCafe.showInfo();
		beanCafe.showInfo();
		cusKim.showInfo();
		cusLee.showInfo();
	}
	
}
