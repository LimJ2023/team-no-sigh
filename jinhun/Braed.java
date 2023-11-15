package chapter06_1;

import java.util.Scanner;

public class Braed {

	
	void makeBread() {
		System.out.println("빵을 만듭니다.");
	}
	
	void makeBread(int count) {
		for (int i = 0; i <count; i++) {
			System.out.println((i+1)+"번째 빵을 만들었습니다");
		}
		System.out.println("요청하신 " +count+"개의 빵이 모두 완료되었습니다.");
	}
	void makeBread(int count, String name) {
		for (int i = 0; i <count; i++) {
			System.out.println((i+1)+"번째 " +name+" 빵을 만들었습니다");
		}
		System.out.println("요청하신 "+count+"개의 "+name+" 빵이 모두 완료되었습니다.");
	}
	void order() {
		Scanner scan = new Scanner(System.in);
		
		while (true) {
			System.out.println("========================================");
			System.out.println("1. 빵 갯수 선택 | 2. 빵의 갯수와 종류 | 3. 종료 ");
			System.out.println("========================================");
			System.out.print("선택> ");
			int input_num=scan.nextInt();
			
			if(input_num==1) {
				System.out.println("주문할 빵의 갯수 : ");
				int cnt=scan.nextInt();
				makeBread(cnt);
			}else if (input_num==2) {
				System.out.println("주문할 빵의 갯수 : ");
				int cnt=scan.nextInt();
				System.out.println("주문할 빵의 종류 : ");
				String name=scan.next();
				makeBread(cnt, name);
			}else if (input_num==3) {
				System.out.println("프로그램 종료");
				break;
			}else {
				System.out.println("잘못된 번호 입니다.");
			}
		}
		scan.close();
	}
	
	
}
