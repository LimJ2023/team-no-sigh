package java1115;

public class Test06_CardCompanyTest {

	public static void main(String[] args) {
		Test06_CardCompany myCompany1 = Test06_CardCompany.getInstance();
		Test06_CardCompany myCompany2 = Test06_CardCompany.getInstance();
		
		System.out.println(myCompany1 == myCompany2);
	}
}
