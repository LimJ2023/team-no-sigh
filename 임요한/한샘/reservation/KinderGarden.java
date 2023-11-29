package reservation;

import java.util.Iterator;
import java.util.LinkedList;


public class KinderGarden {
	
	
	//결과 발표일
	int day;
	//입학 날짜
	int d_day;
	
	//정원
	int personnelLimit;
	//예약된 아이들
	LinkedList<Kid> list = new LinkedList<Kid>();
	
	public void init() {
		d_day = 25;
		personnelLimit = 10;
	}
	
	public void showDay() {
		System.out.println(d_day + "일에 입학하는 아이 수 : "+ list.size() + "명 입니다.");
	}
	
	//예약하기
	public void reservation(Kid kid) {
		
		if(list.size() >= personnelLimit) {
			System.out.println("정원이 가득 찼습니다.");
		}
		else {
			list.add(kid);
		}
	}
	//예약 취소
	public boolean cancel(Kid kid) {
		Iterator<Kid> it = list.iterator();
		while (it.hasNext()) {
			Kid kid1 = it.next();
			String tempName = kid1.name;
			if(tempName.equals(kid.name)) {
				list.remove(kid1);
				return true;
			}
		}
		System.out.println(kid.name + "가 존재하지 않습니다.");
		return false;
	}
	
	
	
	
}
