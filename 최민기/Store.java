package test02;

public class Store {
	
	Item[] items;
	
	int todaySales;
	
	double totalSales;
	
	public void init() {
		
		totalSales = 2000000;
		items = new Item[5];
		items[0] = new Item("신선품", 5000);
		items[1] = new Item("고기", 8000);
		items[2] = new Item("의류", 10000);
		items[3] = new Item("전자제품", 20000);
		items[4] = new Item("가구", 50000);
	}
	
	public void showInventory(){
		for (int i = 0; i < items.length; i++) {
			System.out.println((i+1) + ". " + items[i].name + ", " + items[i].price + "원");
		}
		
	}
	
	public void showTodaySales(){
		int sum = 0;
		for (int i = 0; i < items.length; i++) {
			sum += items[i].price;
		}
		todaySales = sum;
		System.out.println("오늘의 매출은 " + todaySales + "원 입니다.");
	}
	
	public void showTotalSale(){
		totalSales += todaySales;
		System.out.println("총 매출액은 " + totalSales +  "입니다.");
	}

}
