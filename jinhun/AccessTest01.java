package chapter06_1;

public class AccessTest01 {

	private int aa;
	public int bb;
	int cc;
	
	public void setAa(int aa) {
		this.aa = aa;
	}
	
	public void setBb(int bb) {
		this.bb = bb;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}
	public void Disp() {
		System.out.println("aa값 : " + aa + "\nbb값 : " + bb + "\ncc값: " + cc);
	}
	public static void main(String[] args) {
		AccessTest01 obj = new AccessTest01();
		
		obj.setAa(10);
		obj.setBb(20);
		obj.setCc(30);
		obj.Disp();
	}
}
