public class StudentExample {

	//클래스에서 선언되면 멤버변수 = 필드 = 전역변수
	
	//제작회사, 모델, 색깔, 최고속도(String company, model, color | int maxSpeed)
	//현재 속도, 엔진 회전 수(int speed, rpm)
  //등의 속성 삽입하는 곳.
	
	public static void main(String[] args) {
		Student s1 = new Student();
		System.out.println("s1 변수가 Student 객체를 참조합니다.");

		Student s2 = new Student();
		System.out.println("s2 변수가 또 다른 Student 객체를 참조합니다.");
	}

}

//Student.Java 있어야 실행가능
