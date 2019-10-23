package com.app.util;

import java.io.UnsupportedEncodingException;

public class Utility {
	private static final String CODE = "abcdefghijklmnopqrstuvwxyz"
			+ "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "1234567890";

	private Utility() {
	}

	public static boolean isNumber(String text) {
		try {
			Integer.parseInt(text);

			return true;
		} catch (NumberFormatException ex) {
			return false;
		}
	}

	public static String convertThai(String text) {
		try {
			return new String(text.getBytes("ISO8859_1"), "UTF-8");
		} catch (UnsupportedEncodingException ex) {
			return null;
		}
	}

	public static String randomText(int length) {
		StringBuilder text = new StringBuilder();

		for (int i = 0; i < length; i++) {
			int pos = (int) (Math.random() * CODE.length());
			char c = CODE.charAt(pos);

			text.append(c);
		}

		return text.toString();
	}
	public static void main(String[] args) {
		System.out.println(randomText(15));
	}
}