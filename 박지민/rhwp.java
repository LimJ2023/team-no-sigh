package rlch;

import java.util.Scanner;

public class rhwp {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int mat = 0; // 수학 총점
		int en = 0; // 영어 총점
		int c = 0; // 과학 총점
		int highest = 0; //최고점자점수
		int sum = 0; //총점
		
		/*
		 * double matsum = 0; 
		 * double ensum = 0; 
		 * double csum = 0;
		 */
		
		double memsum = 0; //평균

		String highestmem = null;//최고점자이름
		
		System.out.print("팀 인원수 : ");
		int memnum = sc.nextInt();
		String[][] i = new String[memnum][4]; //i 배열에 memnum만큼 행을 만들고 4만큼 열을 만든다.
		int[] memScore = new int[memnum]; //memScore(멤버총점)배열을 memnum만큼 만듦

		System.out.print("팀 이름 : ");
		String teamNam = sc.next();

		for (int j = 0; j < memnum; j++) { //memnum값보다 적을때

			for (int j2 = 0; j2 < 4; j2++) { //4보다 적을때

				switch (j2) {
				case 0: //j2가 0일때
					System.out.print("이름 : ");
					String Nam = sc.next();
					i[j][j2] = Nam; //i[j]행[j2]열에 이름값 대입
					break;
				case 1:
					System.out.print("수학점수 : ");
					String math = sc.next();
					i[j][j2] = math; //i[j]행[j2]열에 수학점수 대입
					memScore[j] += Integer.parseInt(math); 
					//String인 math를 Integer를 사용해 int로 변경 이후 memScore[j]인 배열에 대입
					mat += Integer.parseInt(math);
					//String인 math를 Integer를 사용해 int로 변경 이후 math 대입하여 입력받은 모든 점수 총점
					break;
				case 2:
					System.out.print("영어점수 : ");
					String eng = sc.next();
					i[j][j2] = eng; //i[j]행[j2]열에 영어점수 대입
					memScore[j] += Integer.parseInt(eng);
					//String인 math를 Integer를 사용해 int로 변경 이후 memScore[j]인 배열에 대입
					en += Integer.parseInt(eng);
					break;
				case 3:
					System.out.print("과학점수: ");
					String ci = sc.next();
					i[j][j2] = ci; //i[j]행[j2]열에 과학점수 대입
					memScore[j] += Integer.parseInt(ci);
					//String인 math를 Integer를 사용해 int로 변경 이후 memScore[j]인 배열에 대입
					c += Integer.parseInt(ci);
					//String인 c를 Integer를 사용해 int로 변경 이후 c 대입하여 입력받은 모든 점수 총점
					break;
				}// switch

			} // for j2
		} // for j

		System.out.println("팀 인원 : " + memnum);
		System.out.println("팀명 : " + teamNam);

		for (int j = 0; j < memnum; j++) {//memnum값보다 적을때
			sum += memScore[j]; //memScore[i]의 모든 값 더해 sum에 대입
			if (highest < memScore[j]) { //최고점자의 점수가 memScore[j]의 값보다 작을때
				highest = memScore[j]; //highest에 memScore[j]값 대입
				highestmem = i[j][0]; //최고점자는 i[j]행[0]번째 사람
			}
		}
		/*
		 * matsum = (mat / memnum);
		 * ensum = (en / memnum); 
		 * csum = (c / memnum);
		 * memsum = ((mat + en + c) / memnum);
		 * */
		memsum = (float)sum / memnum; //총평균은 총점/멤버수
		System.out.println("팀원");

		System.out.println("개인 총점이 최고점인 사람 : " + highestmem);
		
		for (int j = 0; j < memnum; j++) { 
			System.out.print(i[j][0] + " "); //i[j]행[0]에 있는 값 출력
			System.out.print(i[j][1] + " "); //i[j]행[1]에 있는 값 출력
			System.out.print(i[j][2] + " "); //i[j]행[2]에 있는 값 출력
			System.out.print(i[j][3] + " "); //i[j]행[3]에 있는 값 출력
			
			if (highestmem.equals(i[j][0])) { //최고점자의 이름이 i[j]번째[0]에 있는 이름과 같다면
				System.out.print("(개인 총점 최고점자)");
			}
			System.out.println();
		}

		
		/*
		 * System.out.println("수학 총점 : " + mat);
		 * System.out.println("수학 평균 : %.3f" + matsum);
		 * System.out.println("영어 총점 : " + en);
		 * System.out.println("영어 평균 : %.3f" + ensum);
		 * System.out.println("과학 총점 : " +c);
		 * System.out.println("과학 평균 : %.3f" + csum);
		 */

		System.out.println("총점 : " + sum);
		System.out.printf("평균 : "+"%.2f", memsum); /* 소숫점 표기 */

	}

}
/*최고점자가 여러명이면 죽여요*/
