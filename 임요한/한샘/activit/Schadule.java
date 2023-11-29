package activity;

import java.awt.Image;
import java.io.File;
import java.util.LinkedList;

import javax.imageio.ImageIO;
import javax.swing.JFrame;

public class Schadule extends JFrame{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	LinkedList<Active> act;
	
	public void img() {
		try {
			File sourceImage = new File("C:\\JAVA\\JAVA_231024\\practice_01\\src\\activity\\pic1.jpg");
			Image img = ImageIO.read(sourceImage);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void testFrame() {
		setTitle("500x300 프레임 만들기"); // 프레임의 제목
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(500, 300);//프레임 크기 설정하기.
		
		setVisible(true);
	}
	
	
	
	
	
	public Schadule() {
		act = new LinkedList<Active>(); 
	}
	
	public void addActive(String name, int num) {
		act.add(new Active(name, num));
		System.out.println(act.getLast().dateNumber + " 일에 " + act.getLast().name + " 활동 추가");
	}
	
	public void change(int num, Active a) {
		//날짜를 바꾸기
		a.dateNumber = num;
		System.out.println(a.name + " 활동의 날짜를 " + a.dateNumber + "일로 수정");
	}
	
	public void name() {
		
	}
	
	public void showActives() {
		
		for (int i = 0; i < act.size(); i++) {
			System.out.println(act.get(i));
		}
	}
	
	
}
