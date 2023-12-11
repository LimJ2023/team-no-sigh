package chapter08;
//한결
//CardCompany를 Test1으로 변경
public class Test1 {
	 private static Test1 instance = new Test1();
	   
	   public static Test1 getInstance() {
	      if (instance == null) {
	         instance = new Test1();
	      }
	      return instance;
	   }

	   public static void main(String[] args) {

	      Card mycard1 = new Card();
	      Card mycard2 = new Card();

	      int num1 = mycard1.getCardNumber();
	      int num2 = mycard2.getCardNumber();

	      System.out.println("1번째 카드 번호 : " + num1);
	      System.out.println("2번째 카드 번호 : " + num2);
	      
	      //추가(인스턴스 주소 다름)
	      System.out.println(mycard1);
	      System.out.println(mycard2);
	      
	      System.out.println("------------------------------");

	      Test1 cardCompany1 = Test1.getInstance();
	      Test1 cardCompany2 = Test1.getInstance();

	      //추가 카드회사 주소 같음(=싱글톤 객체)
	      System.out.println("card1의 주소 : " + cardCompany1);
	      System.out.println("card2의 주소 : " + cardCompany2);
	      
} //main

	   
}

