public class CarExample {

	public static void main(String[] args) {
		//객체 생성 
		Car myCar = new Car();      //Car라는 생성자 클래스의 정보를 담는 myCar라는 객체를 생성.
		
		//필드값 읽기
		System.out.println("제작회사: " + myCar.company);    //Car 클래스의 정보로 만들어진 myCar라는 객체에 필드(변수) 데이터를 출력.
		System.out.println("모델명: " + myCar.model);
		System.out.println("색깔: " + myCar.color);
		System.out.println("최고속도: " + myCar.maxSpeed);
		System.out.println("현재속도: " + myCar.speed);
		
		//필드값 변경
		myCar.speed = 60;
		System.out.println("수정된 속도: " + myCar.speed);    //myCar 객체에서 speed의 값을 변경함.
	}

}
//Car 클래스 생성자를 가지고 있음.
