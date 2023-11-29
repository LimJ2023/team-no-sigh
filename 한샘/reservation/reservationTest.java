package reservation;

public class reservationTest {

	public static void main(String[] args) {

		
		KinderGarden kg = new KinderGarden();
		kg.init();
		
		Kid kid1 = new Kid("1호", 5);
		Kid kid2 = new Kid("2호", 4);
		Kid kid3 = new Kid("3호", 1);
		Kid kid4 = new Kid("3호", 1);
		Kid kid5 = new Kid("3호", 1);
		Kid kid6 = new Kid("3호", 1);
		Kid kid7 = new Kid("3호", 1);
		Kid kid8 = new Kid("3호", 1);
		Kid kid9 = new Kid("3호", 1);
		Kid kid10 = new Kid("3호", 1);
		Kid kid11 = new Kid("3호", 1);
		
		
		
		kg.reservation(kid1);
		kg.reservation(kid2);
		kg.reservation(kid3);
		kg.reservation(kid4);
		kg.reservation(kid5);
		kg.reservation(kid6);
		kg.reservation(kid7);
		kg.reservation(kid8);
		kg.reservation(kid9);
		kg.reservation(kid10);
		kg.reservation(kid11);
		kg.showDay();
		
		kg.cancel(kid1);
		kg.showDay();
		kg.reservation(kid11);
		kg.showDay();
		
	}

}
