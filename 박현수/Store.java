package store;

public class Store {
	
	private int todaysum;
	
	//제품들의 배열
	Item[] items;
	
	//오늘의매출
	int daysale;
	//총 매출
	long totalSale;
	
	//초기 재고,매출액 설정 메서드
	public void init() {
		
		totalSale = 2000000;
		
		items = new Item[5];
		items[0] = new Item("신선품", 5000);
		items[1] = new Item("고기", 8000);
		items[2] = new Item("의류", 10000);
		items[3] = new Item("전자제품", 20000);
		items[4] = new Item("가구", 50000);
	}
	
	//재고목록 출력
	public void showInventory() {
		//구현부
		for(int i=0; i<items.length; i++) {
			System.out.println((i+1)+"." + items[i].name + ", " + items[i].price);
		}
	}
	//오늘의 매출 출력
	public void showTodaySales() {
		//구현부
		int sum = 0;
		for (int i = 0; i < items.length; i++) {
			sum += items[i].price;
		}
		
		daysale = sum;
		System.out.println("오늘의 매출은 " + daysale + "원 입니다.");
	}
	//총 매출 출력
	public void showTotalSale() {
		//구현부
		totalSale += daysale;
		System.out.println("총 매출액은 " + totalSale +  "원 입니다.");
	}
	
}
