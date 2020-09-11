package com.yedam.dev;

public class Exercise08 {
	public static void main(String[] args) {
		int[][] array = { { 95, 86 }, 
						  { 83, 92, 96 }, 
				          { 78, 83, 93, 87, 88 } };

		int sum = 0; // 변수를 쓰려면 선언 해야됨
		double avg = 0;
		int length = 0;
				//int ct = 0;
		for (int i = 0; i < array.length; i++) {

			for (int j = 0; j < array[i].length; j++) {
				sum += array[i][j];
				length++;
			}
				//ct += array[i].length
		}

		avg = (double)sum / length;
		System.out.println("sum : " + sum);
		System.out.println("avg : " + avg);

	}
}
