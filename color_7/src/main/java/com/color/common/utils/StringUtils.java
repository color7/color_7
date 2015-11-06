package com.color.common.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Zohar
 * 
 */
public class StringUtils {

	/**
	 * 判断字符串是否为空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		if (str == null)
			return true;
		if (str.trim().equals(""))
			return true;
		return false;
	}

	/**
	 * 空指针转成空值
	 * 
	 * @param nullObject
	 * @return
	 */
	public static <T> String nullToString(T nullObject) {
		if (nullObject != null) {
			return nullObject.toString();
		}
		return "";
	}

	/**
	 * 转换成首字母大写,例如把abc转换成Abc
	 * 
	 * @param s
	 * @return
	 */
	public static String capital(String s) {
		if (s == null || "".equals(s)) {
			return s;
		}

		return s.substring(0, 1).toUpperCase() + s.substring(1);
	}

	/**
	 * 转换成首字母小写,例如把Abc转换成abc
	 * 
	 * @param s
	 * @return
	 */
	public static String camel(String s) {
		if (s == null || "".equals(s)) {
			return s;
		}

		return s.substring(0, 1).toLowerCase() + s.substring(1);
	}

	/**
	 * 把用特殊符号分割的字符串转换成list
	 * 
	 * @param str
	 * @param delimiter
	 * @return
	 */
	public static List<String> getListFromString(String str, char delimiter) {
		if (str == null) {
			throw new IllegalArgumentException("参数不能为空。");
		}

		String regex;
		{
			// TODO 其它正则表达式中的特殊符号
			if (delimiter == '.') {
				regex = "\\.";
			} else {
				regex = String.valueOf(delimiter);
			}
		}

		List<String> results = new ArrayList<String>();
		Collections.addAll(results, str.split(regex));
		return results;
	}

	/**
	 * 使用正则表达式验证
	 * 
	 * @param regex
	 * @param input
	 * @return
	 */
	public static boolean validByRegex(String regex, String input) {
		Pattern p = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
		Matcher regexMatcher = p.matcher(input);
		return regexMatcher.find();
	}

	/**
	 * 是否是整数
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isInteger(String s) {
		boolean rtn = validByRegex("^[-+]{0,1}\\d*$", s);
		return rtn;

	}

	/**
	 * 是否是电子邮箱
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isEmail(String s) {
		boolean rtn = validByRegex(
				"(\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*)*", s);
		return rtn;
	}

	/**
	 * 手机号码
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isMobile(String s) {
		boolean rtn = validByRegex(
				"^(((13[0-9]{1})|(14[0-9]{1})|(17[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\\d{8})$",
				s);
		return rtn;
	}

	/**
	 * ip地址
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isIp(String s) {
		boolean rtn = validByRegex(
				"^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",
				s);
		return rtn;
	}

	/**
	 * 判断是否中文
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isChinese(String s) {
		boolean rtn = validByRegex("^[\u4e00-\u9fa5]+$", s);
		return rtn;
	}

}
