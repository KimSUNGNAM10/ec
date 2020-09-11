package com.yedam.dev;

public class ArrayExample2 {
	public static void main(String[] args) {
		System.out.println(getLargeValue(11, 15, 22));

		System.out.println(getLargeValue(new int[] { 3, 6, 7, 8 }));

		String result = getString("HEllo", "WOrld");
		System.out.println(result);

		String[] ary = { "LEE", "KIM", "PARK" };
		System.out.println(getString(ary));

		int[] intAry = { 1, 2, 3, 4 };
		int[] intAry2 = new int[5];
		intAry2 = new int[] { 1, 2, 3, 4 };

		int[][] intAry3 = new int[3][];// 2차원 [행][열]
		intAry3[0] = new int[] { 1, 2, 3 };
		intAry3[1] = new int[] { 4, 5, 6 };
		intAry3[2] = new int[] { 7, 8, 9 };

		intAry3[0][0] = 1;
		intAry3[0][1] = 2;
		intAry3[0][2] = 3;

		intAry3[1][0] = 4;
		intAry3[1][1] = 5;
		intAry3[1][2] = 6;

		intAry3[2][0] = 7;
		intAry3[2][1] = 8;
		intAry3[2][2] = 9;

		for (int i = 0; i < intAry3.length; i++) {
			for (int j = 0; j < intAry3[i].length; j++) {
				System.out.print(intAry3[i][j] + " ");
			}
			//System.out.println(intAry3[1][0]);
		}

	}

	public static String getString(String[] strAry) {
		String result = ""; // null;
		// return + " - " + " - " +
		for (int i = 0; i < strAry.length; i++) {
			// if(strAry.length - 1 ==i)
			// result += strAry[i];
			// else
			result += strAry[i] + " - ";
		}
		return result;
	}

	public static String getString(String str1, String str2) {
		return str1 + " - " + str2;
	}

	public static int getLargeValue(int[] ary) {
		int maxValue = Integer.MIN_VALUE;
		for (int i = 0; i < ary.length; i++) {
			if (ary[i] > maxValue)
				maxValue = ary[i];

			// if (intAry[i] > maxValue) {
			// maxValue = intAry{i};
			// System.out.println(maxValue);

			// maxValue = getLargeAValue(intAry);

		}

		return maxValue;
	}

	public static int getLargeValue(int a, int b, int c) {
		int maxValue = Integer.MIN_VALUE;
		if (a > maxValue)
			maxValue = a;
		if (b > maxValue)
			maxValue = b;
		if (c > maxValue)
			maxValue = c;
		return maxValue;

	}
}
