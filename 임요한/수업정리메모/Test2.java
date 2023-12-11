package chapter08;
//지수
//CardCompany를 Test2으로 변경
public class Test2 {
	 private static Test2 instance = new Test2();
	   
	   public static Test2 getinstance() {
	      if(instance == null) {
	         instance = new Test2();
	      }
	      return instance;
	   }
	   
	   public static void main(String[] args) {
	            
	      Card card1 = new Card();
	      Card card2 = new Card();
	      
	      
	      System.out.println("첫번째 카드의 카드 번호 : " + card1.getCardNumber());
	      System.out.println("두번째 카드의 카드 번호 : " + card2.getCardNumber());
	      
	      Test2 company1 = Test2.getinstance();
	      Test2 company2 = Test2.getinstance();
	      
	      System.out.println("첫 번째 카드의 카드 회사 : " + company1 );
	      System.out.println("두 번째 카드의 카드 회사 : " + company2);
	      System.out.println("두 카드 회사의 값 일치 확인 : " + (company1 == company2));
	   
	   }

}
