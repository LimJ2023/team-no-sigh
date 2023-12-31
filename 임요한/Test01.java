package chapter06_practice;

import java.util.Scanner;

public class Test01 {
	public static void main(String[] args) {

		for (int i = 0; i < 3; i++) { //계단 찍기
			for (int j = 0; j < 1 + i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

		for (int i = 0; i < 5; i++) { // 역 피라미드

			for (int j = 0; j < i + 1; j++) {
				System.out.print(" ");
			}
			for (int j = 0; j < 9 - i * 2; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		Scanner scan = new Scanner(System.in);
		System.out.print("홀수 입력."  );
		int inputNum = scan.nextInt();
		
		for (int i = 1; i <= inputNum; i++) { // 마름모 위쪽
			for (int j = 0; j < inputNum-i; j++) {
				System.out.print(" ");
			}
			for (int j = 0; j < (2*i) - 1; j++) {
				System.out.print("*");
			}System.out.println();
		}
		
		for (int i = inputNum - 1; i > 0; i--) { // 마름모 아래쪽
			for (int j = 0; j < inputNum-i; j++) {
				System.out.print(" ");
			}
			for (int j = 0; j < (2*i) - 1; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}
