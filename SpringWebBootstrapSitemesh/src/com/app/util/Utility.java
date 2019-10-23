package com.app.util;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class Utility {
	

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
		String CODE = "abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "1234567890";
		StringBuilder text = new StringBuilder();

		for (int i = 0; i < length; i++) {
			int pos = (int) (Math.random() * CODE.length());
			char c = CODE.charAt(pos);

			text.append(c);
		}

		return text.toString();
	}
	
	public static String getImgKeyCode(){
		String key = randomText(20) + (int)(Math.random() * 999999);
		return key;
	}
	
	public static void main(String[] args) {
		for (int i = 0; i < 10; i++) {
			System.out.println(getImgKeyCode());
		}
	}
	
	public static String getISBNKeyCode() {
		StringBuilder sbRandom = new StringBuilder();
		for (int i = 24; i < 96; i++) {
			sbRandom.append((int) (Math.random() * i));
		}

		sbRandom.append(getGroupRandom());
		StringBuilder sbChar = new StringBuilder();
		for (int i = 5; i < sbRandom.length() + 1; i += 5) {
			sbChar.append(sbRandom.charAt(i - 1));
		}
		String sub = sbChar.substring(0, 13);

		List<Integer> l = new ArrayList<Integer>();
		for (int i = 3; i < sub.length() + 1; i += 4) {
			l.add(i);
		}
		l.add(sub.length() + 2);

		StringBuilder sb = new StringBuilder(sub);
		for (int i = 0; i < l.size(); i++) {
			sb.insert(l.get(i), "-");
		}
		return sb.toString();
	}

	public static String getGroupRandom() {
		StringBuilder sb = new StringBuilder();
		int ran1 = (int) (Math.random() * 87569 * Calendar.getInstance(Locale.UK).get(Calendar.MILLISECOND));
		int ran2 = (int) (Math.random() * 26351 * Calendar.getInstance(Locale.UK).get(Calendar.SECOND));
		int ran3 = (int) (Math.random() * 89786 * Calendar.getInstance(Locale.UK).get(Calendar.MINUTE));
		sb.append(ran3);
		sb.append(ran2);
		sb.append(ran1);
		String newRan = sb.reverse().toString();
		return newRan;
	}
}