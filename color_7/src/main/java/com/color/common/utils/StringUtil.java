package com.color.common.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @author Zohar
 * 
 */
public class StringUtil {

	/**
	 * 是否不为空指针
	 * 
	 * @param args
	 * @return
	 */
	public static boolean isNotNull(String args) {
		if (args == null) {
			return false;
		}
		return true;
	}

	/**
	 * 是否不是空值或空指针
	 * 
	 * @param args
	 * @return
	 */
	public static boolean isNotEmpty(String args) {
		if (args == null || args.equals("")) {
			return false;
		}
		return true;
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
			//其它正则表达式中的特殊符号
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
	 * 判断字符串是否为空或者为空值
	 * @param tmp
	 * @return
	 */
	public static boolean isEmpty(String tmp) {
		if (tmp == null || "".equals(tmp))
			return true;
		return false;
	}

	/**
	 * 切割以"，"分隔的字符串，以String数组形式放回
	 * @param str
	 * @return
	 */
	public static List<String> splitStringToStringList(String str){
		List<String> list = new ArrayList<String>();
		String s[] = str.split(",");
		for(int i=0;i<s.length;i++)
			if(!isEmpty(s[i]))
				list.add(s[i]);
		return list;
	}
	/**
	 * 切割以"，"分隔的字符串，以Int数组形式放回
	 * @param str
	 * @return
	 */
	public static List<Integer> splitStringToIntList(String str){
		List<String> list = splitStringToStringList(str);
		List<Integer> ilist = new ArrayList<Integer>();
		try{
			for(int i=0;i<list.size();i++){
				ilist.add(Integer.parseInt(list.get(i)));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return ilist;
	}

}
