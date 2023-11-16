package prac1116;

public class Student3 {

	//학생마다 각각 다른 학생 카드가 발급됩니다. 
	//학생 카드 번호는 학번에 100을 더한 값입니다. => studentID + 100
	//Student3 클래스를 만들어 학생 카드 번호 멤버 변수를 추가하고, => static , cardNum 변수
	//학생이 생성될 때마다 학생 카드 번호를 부여합니다. => ++ 아니라 + 100? 학번을 ++ 하고 cardNum은 +=100? 근데 이걸 어디에?  인스턴스 생성될때마다 올라가게.
	//Student6 클래스를 만들어 학생 두 명을 생성합니다.
	//두 학생의 카드 번호를 출력해보세요.
	
	//멤버변수
	public int studentID;
	public String studentName;
	private static int cardNum;
	
	
	public Student3(int studentID, String studentName) {
		this.studentID = studentID;
		this.studentName = studentName;
	}


	public int getCardNum() {
		return cardNum;
	}


	public void setCardNum(int studentID) {
		Student3.cardNum = (studentID+100);
	}
	
	public void showInfo() {
		System.out.println(studentID + " 학생의 카드번호는 " + cardNum + "입니다.");
	}
	
	
	
}
