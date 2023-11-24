package store;

public class StoreMain {

	public static void main(String[] args) {
		Store store = new Store();
		
		store.init();
		
		store.showInventory();
		store.showTodaySales();
		store.showTotalSale();
	}

}
