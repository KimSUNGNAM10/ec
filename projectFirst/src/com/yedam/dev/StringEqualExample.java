package com.yedam.dev;

class Student {
	String name;
}

public class StringEqualExample {
	public static void main(String[] args) {
		
		Student st1 = new Student();
		Student st2 = new Student();
		st1.name = "Hong";
		st2.name = "Park";
		
		System.out.println(st1); // 주소값저장
		System.out.println(st2); // 주소값저장
		
		
		String str1 = "Hello"; // "hello = 다음 바로 입력해도 됨
		String str2 = "Hello";
		String str3 = new String ("Hello"); // 주석값이 다르기 떄문에 1 3 다름
		
		System.out.println(str1);
		//System.out.println(str2);
		System.out.println(str3);
		
		if (str1 == str3) {
			System.out.println("참조가 같다.");
		} else {
			System.out.println("참조가 다르다.");
		}
	}
}
