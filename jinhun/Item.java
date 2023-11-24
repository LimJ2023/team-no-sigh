package Practice;

public class Item {

	private String list;
	private int price;
	
	
	
	public Item(String list, int price) {
		this.list = list;
		this.price = price;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
