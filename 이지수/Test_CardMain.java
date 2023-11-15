package java1115;

public class Test_CardMain {

	public static void main(String[] args) {
		Test06_Card ownerLee = new Test06_Card();
		ownerLee.setCardName("이지수");
		System.out.println(ownerLee.cardNum);
		
		Test06_Card ownerHong = new Test06_Card();
		ownerHong.setCardName("홍길동");
		System.out.println(ownerHong.cardNum);
	}
	
}
