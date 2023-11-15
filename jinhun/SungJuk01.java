package chapter06_1;

import javax.swing.JOptionPane;

public class SungJuk01 {
	
	
	private String std_num;
	private String std_name;
	private int java,oracle,spring;
	
	public void sum() {
		int total=java+oracle+spring;
		System.out.println("총 합계 :" + total);
	}
	public void avg() {
		int avg=(java+oracle+spring)/3;
		System.out.println("평 균 : " + avg);
	}
	public static void main(String[] args) {
		SungJuk01 record = new SungJuk01();
		
		record.std_num=JOptionPane.showInputDialog("학번");
		record.std_name=JOptionPane.showInputDialog("성명");
		
		record.java=Integer.parseInt(JOptionPane.showInputDialog("자바 점수 입력"));
		record.oracle=Integer.parseInt(JOptionPane.showInputDialog("오라클 점수 입력"));
		record.spring=Integer.parseInt(JOptionPane.showInputDialog("스프링 점수 입력"));
		
		System.out.println("학번 -" + record.std_num + " | 성명 - " + record.std_name + "님의 성적입니다.");
		System.out.println("============================");
		
		record.sum();
		record.avg();
		
	}
}


