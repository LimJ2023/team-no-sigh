package Practice;

public class Store {

	Item[] items;
	int todaySale;
	double baseTotal;
	double totalSale;
	
	public void init() {
		items = new Item[5];
		items[0] = new Item("신선품", 5000);
		items[1] = new Item("고기", 8000);
		items[2] = new Item("의류", 10000);
		items[3] = new Item("전자제품", 20000);
		items[4] = new Item("가구", 50000);
		baseTotal = 2000000;
	}
	void showInventory() {
		for (int i = 0; i < items.length; i++) {
			System.out.println(items[i].getList() + items[i].getPrice());
		}
	}
	void showTodaySales() {
		for (int i = 0; i < items.length; i++) {
			todaySale += items[i].getPrice();
			
		}System.out.println("오늘의 매출은" +todaySale+"원 입니다.");
	}
	void showTotalSal() {
		totalSale = baseTotal + todaySale;
		
		System.out.println("총 매출액은" +totalSale+ "입니다.");
	}
}
