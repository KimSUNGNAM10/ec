package com.yedam.dev;

public class ArrayExample {
	public static void main(String[] args) {
		
		int[] intAry = new int[5];//크기 선언
		int[] intAry2 = {1,2,3,4,5}; // 크기선언하고 값을 따로 설정해도 되고 바로 선언해도됨
		intAry[0] = 10;
		intAry[1] = 20;
		intAry[2] = 30;
		intAry[3] = 40;
		intAry[4] = 50;
	// intAry[5] = 60; 오류 배열 범위초과
		//System.out.println(intAry[0]);
		//System.out.println(intAry[1]);
		//System.out.println(intAry[2]);
		//System.out.println(intAry[3]);
		//System.out.println(intAry[4]);
		// sum 변수에 intAry에 들어있는 각각의 합
		int sum = intAry[0] + intAry[1] + intAry[2] + intAry[3] 
				+ intAry[4];
		sum = 0;
		
		
		for (int i=0; i < 5; i++) {
			//System.out.println(intAry[i]);
			sum += intAry[i];
		}
		
		int[] intAry3 = new int[10];
		 for (int i=0; i<10; i++) {
			 intAry3[i] = 5 * (i + 1);
			
		 }
		for (int i=0; i<intAry3.length; i++) {
			System.out.println(intAry3[i]);
		}
		
		
		
	}
}
