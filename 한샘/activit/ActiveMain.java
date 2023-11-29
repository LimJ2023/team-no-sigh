package activity;

public class ActiveMain {

	public static void main(String[] args) {
		
		Schadule sc = new Schadule();
		
		sc.addActive("종이접기", 3);
		sc.addActive("모래놀이", 1);
		sc.addActive("체육", 15);
		
		Active act1 = new Active("소풍", 20);
		sc.act.add(act1);
		
		sc.change(5, act1);
		sc.showActives();
		
		sc.testFrame();
	}

}
