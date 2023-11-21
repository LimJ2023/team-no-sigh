package chapter11_1;

import java.util.Scanner;

public class Tour {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
	      int people; //관광객 수

	      Guest[] guest = null; //Guest 배열 선언
	      System.out.print("관광객 수: ");
	      people = sc.nextInt(); //관광객 수 입력 받기
	      sc.nextLine(); //오류 대비

	      guest = new Guest[people]; //Guest배열을 people 값 만큼 반복
	      for (int i = 0; i < people; i++) {
	         guest[i] = new Guest();
	      } //for


	      System.out.println("관광객 등록");
	      for (int i = 0; i < people; i++) {
	         System.out.print((i + 1) + ". 이름 : ");
	         guest[i].setName(sc.nextLine()); //setName에 입력 받은 값을 대입
	         System.out.print((i + 1) + ". 성별 : ");
	         guest[i].setGender(sc.nextLine()); //setGender에 입력 받은 값을 대입
	         System.out.println("-----------------");
	      }//for
	      Guide.point = "호주";
	      while (true) {
	         System.out.println("=========================");
	         System.out.println("1. 관광객 정보");
	         System.out.println("2. 목적지 변경");
	         System.out.println("3. 종료");

	         int n = 0;
	         System.out.print("선택>> ");
	         n = sc.nextInt();
	         sc.nextLine();
	      
	         if (n == 1) {
	            for (int i = 0; i < people; i++) {
	               System.out.println((i + 1) + ". 이름 : " + guest[i].getName());
	               System.out.println((i + 1) + ". 성별 : " + guest[i].getGender());
	               System.out.println((i + 1) + ". 목적지 : " + guest[i].getPoint());
	               System.out.println("-----------------");
	            }//for
	         }//if
	         else if (n == 2) {
	            System.out.print("어디로 변경하시겠습니까: ");
	            
	            String ss= sc.nextLine();
	            Guide.point = ss;
	            
	            System.out.println(ss + "로 목적지 변경");
	         } //else if
	         else if (n == 3) {
	            System.out.println("종료");
	            break;
	         } //else if
	         else {
	            System.out.println("잘못된 번호입니다.");
	         }//else
	      } //while

	      sc.close(); //Scanner닫기

	   }//main

	}//class