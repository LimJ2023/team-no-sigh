package chapter06;

import java.util.Scanner;

public class ReMethod {

	//메서드를 3개 만들기
	
	//메서드1 = 빵을 만든다는 문구를 출력하는 메서드
	void makeBread() {
		System.out.println("빵을 만듭니다.");
	}
	
	//메서드2 = 1. 빵 개수만선택
	void makeBread(int count) {
		makeBread();
		for (int i = 0; i < count; i++) {
			System.out.println((i+1) + "번째 빵을 만들었습니다.");
		}
		System.out.println("요청하신 " +count+"개의 빵이 모두 완료되었습니다.");
	}
	
	//메서드3 = 2. 빵 타입과 개수 선택
	void makeBread(int count, String name) {
		makeBread();
		for (int i = 0; i < count; i++) {
			System.out.println(name + "빵 " +(i+1)+ "개를 만들었습니다.");
			
		}
		System.out.println("요청하신 " +name+ "빵 " +count+ "개를 만들었습니다.");
	}
	
	//메서드4 = 전체 실행 메뉴
	void order() {
		
		Scanner scan = new Scanner(System.in);
		
		
		while(true) {
		
		
		System.out.println("========================================");
		System.out.println("1. 빵 갯수 선택 | 2. 빵의 갯수와 종류 | 3. 종료 ");
		System.out.println("========================================");
		System.out.print("선택> ");
		int input_num=scan.nextInt();
		
		if (input_num == 1) {
			System.out.println("주문할 빵의 갯수: ");
			int cnt = scan.nextInt();
			makeBread(cnt);
			
		} else if(input_num == 2){
			System.out.println("주문할 빵의 갯수: ");
			int cnt = scan.nextInt();
			System.out.println("주문할 빵의 종류: ");
			String name = scan.next();
			makeBread(cnt, name);

		}else if(input_num == 3) {
			System.out.println("프로그램을 종료합니다");
			break;
			
		}else {
			System.out.println("잘못된 번호입니다. 메뉴 내 번호를 선택하세요");
		}
		
		}
		
		scan.close();
	}
		
	
}
