package test02;

public class StoreMain{
	
	public static void main(String[] args) {
	
		Store store = new Store();
		
		store.init();
		
		System.out.println("======재고 목록======");
		store.showInventory();
		store.showTodaySales();
		store.showTotalSale();
		
	}
	
}
