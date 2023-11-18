public class tast {

  //long는 정식 명칭으로는 long int로 선언하는게 맞으나 long으로 선언 함으로 int는 생략 가능하다.
  //long은 4바이트이며 앞에 long을 붙이면 8바이트로 제한 수를 늘릴 수 있다.
  //숫자를 입력할 시 4이상이면 long이 추가로 입력되어야 한다.
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in); 
		
		int nLong = scan.nextInt();
		
		for(int i=0; i<nLong; i++) {
			if(i % 4 == 0) {
				System.out.print("long ");
			}
		}
		System.out.println("int");
	}
	
}

