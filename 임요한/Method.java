package chapter05;

import java.util.Scanner;

public class Method {
	
	int BBangNumber;
	String BBangName;
	int selectMenu;
	boolean run = true;
	BBang[] bbangs;
	Scanner scan = new Scanner(System.in);
	
	
	public void runBBang() {
		while (run) {
			System.out.println("--------------------------");
			System.out.println("1.빵 개수만 선택 | 2.빵 개수와 종류 선택 3.빵개수 확인 4.빵이름 확인| 5.종료");
			System.out.println("--------------------------");
			System.out.print("선택 >> ");
			selectMenu = scan.nextInt();
			
			menu();
		}
		scan.close();
	}
	
	public void menu() {
		switch (selectMenu) {
		case 1:
			System.out.print("주문할 빵의 개수 :");
			BBangNumber = scan.nextInt();
			makeBBang(BBangNumber);
			break;
		case 2:
			System.out.print("주문할 빵의 개수 :");
			BBangNumber = scan.nextInt();
			scan.nextLine();
			System.out.print("주문할 빵의 종류 : " );
			BBangName = scan.nextLine();
			System.out.println();
			makeBBang(BBangNumber, BBangName);
			break;
		case 3:
			showBBangsInfo();
			break;
		case 4:
			showBBangsInfo();
			break;
		case 5:
			System.out.println("종료합니다.");
			run = false;
			break;
		default:
			System.out.println("잘못된 번호입니다.");
			break;
		}
		
	}
	
	public void makeBBang(int BBangNumber) {
		bbangs = new BBang[BBangNumber];
		for (int i = 0; i < bbangs.length; i++) {
			System.out.println((i+1) + "개의 빵이 완료되었습니다.");
		}
	}
	public void makeBBang(int BBangNumber, String BBangName) {
		bbangs = new BBang[BBangNumber];
		for (int i = 0; i < bbangs.length; i++) {
			System.out.println(BBangName+ "빵 " +(i+1) + "개가 완료되었습니다.");
			bbangs[i] = new BBang();
			bbangs[i].name = BBangName;
		}
	}
	
	public void showBBangsInfo() {
		if(BBangName != null && selectMenu != 3) {
			System.out.println("빵이름은 " + bbangs[0].name);
		}
		System.out.println("빵의 개수는 : " + bbangs.length + "개 입니다.");
	}
	
	
	
}
