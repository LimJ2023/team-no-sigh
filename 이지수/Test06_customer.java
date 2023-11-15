package java1115;

public class Test06_customer {

	public String customerName;
	public int money;
	
	public Test06_customer(String customerName, int money) {
		this.customerName=customerName;
		this.money=money;
	}
	
	public void takeStar(Test06_StarCafe starcafe) {
		starcafe.take(4000);
		this.money-=4000;
	}
	
	public void takeBean(Test06_StarCafe beancafe) {
		beancafe.take(4500);
		this.money-=4500;
	}
	
	public void showInfo() {
		System.out.println(customerName + "님의 남은 돈은 " + money + " 원 입니다.");
	}
}
