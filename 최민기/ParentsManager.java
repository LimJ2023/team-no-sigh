package ParentsRegistration;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class ParentsManager {
	
	ArrayList<Parents> prList = new ArrayList<Parents>();
	
	public void parents() {
		Scanner scan = new Scanner(System.in);
		
		outer : while (true) {
			System.out.println("1. 학부모 등록");
			System.out.println("2. 학부모 탈퇴");
			System.out.println("3. 학부모 조회");
			System.out.println("4. 종료");
			
			System.out.println("항목선택 : ");
			int selectMenu = scan.nextInt();
			scan.nextLine();
			switch (selectMenu) {
			case 1:
				addParents(scan);
				break;
			case 2:
				removeParents(scan);
				break;
			case 3:
				showInfo(scan);
				break;
			case 4:
				System.out.println("종료합니다.");
				break outer;
				
			default:
				System.out.println("올바르지 않은 입력입니다.");
				break;
			}
		}
		
	}


	private void addParents(Scanner sc) {
		
		Parents p1 = new Parents();
		System.out.println("------정보 입력------");
		
		System.out.print("학부모 성함 : ");
		String name = sc.nextLine();
		p1.setName(name);
		
		System.out.print("학부모 번호 : ");
		String tel = sc.nextLine();
		p1.setTel(tel);
		
		System.out.print("학부모 지역 : ");
		String place = sc.nextLine();
		p1.setPlace(place);
		
		System.out.println("비밀번호 : ");
		String pw = sc.nextLine();
		p1.setPw(pw);
		
		prList.add(p1);
		System.out.println("정보가 저장되었습니다.");
		
	}

	private boolean removeParents(Scanner sc) {
		
		Iterator<Parents> it = prList.iterator();
		System.out.println("학부모 탈퇴 : (비밀번호 입력) ");
		String pw = sc.nextLine();
		
		while (it.hasNext()) {
			Parents parents = (Parents) it.next();
			
			if(parents.getPw().equals(pw)) {
				prList.remove(parents);
				System.out.println("탈퇴 완료");
				return true;
			}
		}
		return false;
	}
	
	private void showInfo(Scanner sc) {
		System.out.println("--------전체정보--------");
		System.out.println("등록인원 " + prList.size() + "명");
		for (Iterator<Parents> iterator = prList.iterator(); iterator.hasNext();) {
			Parents parents = (Parents) iterator.next();
			System.out.println("합부모 성함 : " + parents.getName());
			System.out.println("합부모 번호 : " + parents.getTel());
			System.out.println("합부모 지역 : " + parents.getPlace());
			System.out.println("--------------------");
		}
	}

}
