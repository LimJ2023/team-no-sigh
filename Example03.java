package chapter09;

/*부모 클래스 Pe(person)과 자식클래스 Stu(Student), Teacher를 생성하세요.
Pe 클래스에는 이름과 나이를 저장하는 멤버변수와 출력하는 메서드가 있습니다.
Stu 클래스와 Teacher 클래스에는 각각 학번과 과목을 추가로 저장하고 출력하는 메서드 추가하세요.abstract
구현화면
이름: 홍길동
나이: 12
학번: 12345

이름: 김선생
나이: 50
담당과목: 수학
*/

public class Example03 {

	public static void main(String[] args) {
		Stu stu = new Stu("홍길동", 12, 12345);
		Teacher teacher = new Teacher("김선생", 50, "수학");
		
		stu.showInfo();
		System.out.println();
		teacher.showInfo();
	}
	
}

class Pe{
	protected String name;
	protected int age;
	
	
	public void showInfo() {
		System.out.println("이름: " + name);
		System.out.println("나이: " + age);
		
	}
	public Pe(String name, int age) {
		super();
		this.name = name;
		this.age = age;
		
	}
}

class Stu extends Pe{
	int number;

	
		
	public Stu(String name, int age, int number) {
	super(name, age);
	this.number = number;
}


	

	@Override
	public void showInfo() {
		// TODO Auto-generated method stub
		super.showInfo();
		System.out.println("학번 : " + number);
	}
	
	
}

class Teacher extends Pe{

	String book;

	

	public Teacher(String name, int age, String book) {
		super(name, age);
		this.book = book;
	}



	@Override
	public void showInfo() {
		// TODO Auto-generated method stub
		super.showInfo();
		System.out.println("담당과목 : " + book);
	}
	
	
}