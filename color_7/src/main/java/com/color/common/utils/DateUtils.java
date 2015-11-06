package com.color.common.utils;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 * @author Zohar 
 * 日期时间相关工具 日期格式 日期计算
 * 
 */
public class DateUtils {

	public static void main(String[] args) throws Exception {
		System.out.println(getWeekDayNum(getDateFormat("2014-08-10", 1)));
		System.out.println(getStringDateFormat(getNMonthOfDate(new Date(), 1),
				yyyy_MM_dd));
		System.out.println(getYearMonth(new Date()));
	}

	public static int yyyy_MM_dd = 1;

	public static int yyyy_M_d = 2;

	public static int yy_MM_dd = 3;

	public static int yy_M_d = 4;

	public static int yyyy_MM_dd_HH_mm_ss = 5;

	public static int yyyy_M_d_H_m_s = 6;

	public static int yy_MM_dd_HH_mm_ss = 7;

	public static int yy_M_d_H_m_s = 8;

	public static int yyyy = 9;

	public static int yyyy_MM = 10;

	public static int yyyyMMdd = 11;

	public static int yyyyMM = 12;

	public static int yyyyMMddHHmmss = 13;

	public static int yyMMddHH = 14;

	// 2010-01-01T00:00:00.0Z
	public static int yyyy_MM_dd_T_HH_mm_ss_0Z = 15;

	public static int HH_mm_ss = 16;

	/**
	 * 输入String类型的日期与格式代号，以String类型返回需要的格式
	 * 
	 * @param date
	 *            String 类型的日期
	 * @param i
	 *            格式类型 可以这样调用DateTool.yyyy_MM_dd
	 * */
	public static String getStringDateFormats(String date, int i)
			throws Exception {
		SimpleDateFormat simpledateformat = new SimpleDateFormat();
		if (date == null || date.length() < 6) {
			return "";
		}
		switch (i) {
		case 1: // '\001'
			simpledateformat.applyPattern("yyyy-MM-dd");
			break;

		case 2: // '\002'
			simpledateformat.applyPattern("yyyy-M-d");
			break;

		case 3: // '\003'
			simpledateformat.applyPattern("yy-MM-dd");
			break;

		case 4: // '\004'
			simpledateformat.applyPattern("yy-M-d");
			break;

		case 5: // '\005'
			simpledateformat.applyPattern("yyyy-MM-dd HH:mm:ss");
			break;

		case 6: // '\006'
			simpledateformat.applyPattern("yyyy-M-d H:m:s");
			break;

		case 7: // '\007'
			simpledateformat.applyPattern("yy-MM-dd HH:mm:ss");
			break;

		case 8: // '\b'
			simpledateformat.applyPattern("yy-M-d H:m:s");
			break;

		case 9: //
			simpledateformat.applyPattern("yyyy");
			break;

		case 10: //
			simpledateformat.applyPattern("yyyy-MM");
			break;

		case 11: //
			simpledateformat.applyPattern("yyyyMMdd");
			break;

		case 12: //
			simpledateformat.applyPattern("yyyyMM");
			break;

		case 13:
			simpledateformat.applyPattern("yyyyMMddHHmmss");
			break;

		case 14:
			simpledateformat.applyPattern("yyMMddHH");
			break;

		case 15: //
			simpledateformat.applyPattern("yyyy-MM-dd'T'HH:mm:ss.0'Z'");
			break;

		case 16: //
			simpledateformat.applyPattern("HH:mm:ss");
			break;
		}
		return simpledateformat.format(simpledateformat.parse(date));
	}

	public static String getStringDateFormat(String date, int inputi,
			int outputi) {
		try {
			Date input = getDateFormat(date, inputi);
			return getStringDateFormat(input, outputi);
		} catch (Exception e) {
			// e.printStackTrace();
		}
		return "";
	}

	/**
	 * 输入Date类型的日期与格式代号，以String类型返回需要的格式
	 * 
	 * @param calendar
	 *            Date 类型的日期
	 * @param i
	 *            格式类型 可以这样调用DateTool.yyyy_MM_dd
	 * */

	public static String getStringDateFormat(Date calendar, int i)
			throws Exception {
		SimpleDateFormat simpledateformat = new SimpleDateFormat();
		switch (i) {
		case 1: // '\001'
			simpledateformat.applyPattern("yyyy-MM-dd");
			break;

		case 2: // '\002'
			simpledateformat.applyPattern("yyyy-M-d");
			break;

		case 3: // '\003'
			simpledateformat.applyPattern("yy-MM-dd");
			break;

		case 4: // '\004'
			simpledateformat.applyPattern("yy-M-d");
			break;

		case 5: // '\005'
			simpledateformat.applyPattern("yyyy-MM-dd HH:mm:ss");
			break;

		case 6: // '\006'
			simpledateformat.applyPattern("yyyy-M-d H:m:s");
			break;

		case 7: // '\007'
			simpledateformat.applyPattern("yy-MM-dd HH:mm:ss");
			break;

		case 8: // '\b'
			simpledateformat.applyPattern("yy-M-d H:m:s");
			break;

		case 9: //
			simpledateformat.applyPattern("yyyy");
			break;

		case 10: //
			simpledateformat.applyPattern("yyyy-MM");
			break;

		case 11: //
			simpledateformat.applyPattern("yyyyMMdd");
			break;

		case 12: //
			simpledateformat.applyPattern("yyyyMM");
			break;

		case 13: //
			simpledateformat.applyPattern("yyyyMMddHHmmss");
			break;

		case 14:
			simpledateformat.applyPattern("yyMMddHH");
			break;

		case 15: //
			simpledateformat.applyPattern("yyyy-MM-dd'T'HH:mm:ss.0'Z'");
			break;

		case 16: //
			simpledateformat.applyPattern("HH:mm:ss");
			break;
		}
		return simpledateformat.format(calendar);
	}

	/**
	 * 输入String类型的日期与格式代号，以Date类型返回需要的格式
	 * 
	 * @param date
	 *            String 类型的日期
	 * @param i
	 *            格式类型 可以这样调用DateTool.yyyy_MM_dd
	 * */
	public static Date getDateFormat(String date, int i) throws Exception {
		SimpleDateFormat simpledateformat = new SimpleDateFormat();
		switch (i) {
		case 1: // '\001'
			simpledateformat.applyPattern("yyyy-MM-dd");
			break;

		case 2: // '\002'
			simpledateformat.applyPattern("yyyy-M-d");
			break;

		case 3: // '\003'
			simpledateformat.applyPattern("yy-MM-dd");
			break;

		case 4: // '\004'
			simpledateformat.applyPattern("yy-M-d");
			break;

		case 5: // '\005'
			simpledateformat.applyPattern("yyyy-MM-dd HH:mm:ss");
			break;

		case 6: // '\006'
			simpledateformat.applyPattern("yyyy-M-d H:m:s");
			break;

		case 7: // '\007'
			simpledateformat.applyPattern("yy-MM-dd HH:mm:ss");
			break;

		case 8: // '\b'
			simpledateformat.applyPattern("yy-M-d H:m:s");
			break;

		case 9: //
			simpledateformat.applyPattern("yyyy");
			break;

		case 10: //
			simpledateformat.applyPattern("yyyy-MM");
			break;

		case 11: //
			simpledateformat.applyPattern("yyyyMMdd");
			break;

		case 12: //
			simpledateformat.applyPattern("yyyyMM");
			break;

		case 13:
			simpledateformat.applyPattern("yyyyMMdd HH:mm:ss");
			break;

		case 14:
			simpledateformat.applyPattern("yyMMddHH");
			break;

		case 15: //
			simpledateformat.applyPattern("yyyy-MM-dd'T'HH:mm:ss.0'Z'");
			break;

		case 16: //
			simpledateformat.applyPattern("HH:mm:ss");
			break;
		}
		return simpledateformat.parse(date);
	}

	/**
	 * 输入日期格式代号，以String类型返回需要的格式的当前日期时间
	 * 
	 * @param i
	 *            格式类型 可以这样调用DateTool.yyyy_MM_dd
	 * */

	public static String getNowDate(int i) throws Exception {
		SimpleDateFormat simpledateformat = new SimpleDateFormat();
		switch (i) {
		case 1: // '\001'
			simpledateformat.applyPattern("yyyy-MM-dd");
			break;

		case 2: // '\002'
			simpledateformat.applyPattern("yyyy-M-d");
			break;

		case 3: // '\003'
			simpledateformat.applyPattern("yy-MM-dd");
			break;

		case 4: // '\004'
			simpledateformat.applyPattern("yy-M-d");
			break;

		case 5: // '\005'
			simpledateformat.applyPattern("yyyy-MM-dd HH:mm:ss");
			break;

		case 6: // '\006'
			simpledateformat.applyPattern("yyyy-M-d H:m:s");
			break;

		case 7: // '\007'
			simpledateformat.applyPattern("yy-MM-dd HH:mm:ss");
			break;

		case 8: // '\b'
			simpledateformat.applyPattern("yy-M-d H:m:s");
			break;

		case 9: //
			simpledateformat.applyPattern("yyyy");
			break;

		case 10: //
			simpledateformat.applyPattern("yyyy-MM");
			break;

		case 11: //
			simpledateformat.applyPattern("yyyyMMdd");
			break;

		case 12: //
			simpledateformat.applyPattern("yyyyMM");
			break;

		case 13: //
			simpledateformat.applyPattern("yyyyMMddHHmmss");
			break;

		case 14:
			simpledateformat.applyPattern("yyMMddHH");
			break;

		case 15: //
			simpledateformat.applyPattern("yyyy-MM-dd'T'HH:mm:ss.0'Z'");
			break;

		case 16: //
			simpledateformat.applyPattern("HH:mm:ss");
			break;
		}
		return simpledateformat.format(new Date());
	}

	/**
	 * 
	 * 取得系统当前时间，返回类型为Date
	 */

	public static Date getNowDate() throws ParseException {
		return new Date();
	}

	/**
	 * 
	 * 取得系统当前时间，返回类型为Date
	 */
	public static Date getNowDateClear() {
		try {
			return DateUtils.getDateFormat(DateUtils.getStringDateFormat(
					new Date(), DateUtils.yyyy_MM_dd), DateUtils.yyyy_MM_dd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Date getTodayDate() throws Exception {
		return getFristTimeOfDate(new Date());
	}

	/**
	 * 日期的计算
	 */

	/**
	 * 取得一天的开始时间
	 * 
	 * @param date
	 * @param pattern
	 * @return
	 * @throws Exception
	 */
	public static Date getFristTimeOfDate(Date date) throws Exception {
		String s = getStringDateFormat(date, yyyy_MM_dd);
		return getDateFormat(s + " 00:00:00", yyyy_MM_dd_HH_mm_ss);
	}

	/**
	 * 取得一天的最后时间
	 * 
	 * @param date
	 * @param pattern
	 * @return
	 * @throws Exception
	 */
	public static Date getLastTimeOfDate(Date date) throws Exception {

		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(GregorianCalendar.DATE, 1);
		return getFristTimeOfDate(gc.getTime());
	}

	/**
	 * 取得前N天前或后的时间
	 * 
	 * @param date
	 *            日期
	 * @param N
	 *            date的N天 负数为前N天 正数为后N天
	 * @throws Exception
	 */
	public static Date getNDayOfDate(Date date, Integer N) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(GregorianCalendar.DATE, N);
		return gc.getTime();
	}

	/**
	 * 取得N个月前或后
	 * 
	 * @param date
	 * @param N
	 * @return
	 */
	public static Date getNMonthOfDate(Date date, Integer N) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(GregorianCalendar.MONTH, N);
		return gc.getTime();
	}

	/**
	 * date1与date2相差的天数 date1 date2
	 * 
	 * @throws Exception
	 */
	public static long getDays(String date1, String date2) throws Exception {
		long days = 0;
		Date dt1 = getDateFormat(date1, yy_MM_dd);
		Date dt2 = getDateFormat(date2, yy_MM_dd);
		days = dt1.getTime() - dt2.getTime();
		days = days / 1000 / 60 / 60 / 24;
		return days;
	}

	/**
	 * date1与date2相差的天数 date1 date2
	 * 
	 * @throws Exception
	 */
	public static long getDays(Date date1, Date date2) throws Exception {
		long days = 0;
		date1 = getDateFormat(getStringDateFormat(date1, yyyy_MM_dd),
				yyyy_MM_dd);
		date2 = getDateFormat(getStringDateFormat(date2, yyyy_MM_dd),
				yyyy_MM_dd);
		days = date1.getTime() - date2.getTime();
		days = days / 1000 / 60 / 60 / 24;
		return days;
	}

	/**
	 * 取得日期对应的星期
	 * 
	 * @param date
	 */
	public static String getWeekDay(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		int i = c.get(Calendar.DAY_OF_WEEK) - 1;
		String day[] = new String[] { "SUNDAY", "MONDAY", "TUESDAY",
				"WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY" };
		return day[i];
	}

	/**
	 * 取得日期对应的星期数字
	 * 
	 * @param date
	 */
	public static int getWeekDayNum(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.DAY_OF_WEEK);
	}

	/**
	 * 取当前时间的秒数
	 * */
	public static int getSecond() {

		java.util.Calendar c = java.util.Calendar.getInstance();
		c.setTime(new Date());
		return c.get(java.util.Calendar.SECOND);

	}

	/**
	 * 将指定的天数添加到给定的日历字段中。 例: date=2007.12.1 days=2 return 2007.12.3 例:
	 * date=2007.12.1 days=-2 return 2007.11.29
	 * 
	 * @param date
	 *            指定日期
	 * @param days
	 *            时间量
	 * @return 返回修改后的日期
	 */
	public static Date addDays(Date date, int days) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.DAY_OF_MONTH, days);
		return gc.getTime();
	}

	/**
	 * 将指定的天数添加到给定的日历字段中。 例: date=2007.12.1 weeks=2 return 2007.12.15 例:
	 * date=2007.12.1 weeks=-2 return 2007.11.17
	 * 
	 * @param date
	 *            指定日期
	 * @param days
	 *            时间量
	 * @return 返回修改后的日期
	 */
	public static Date addWeeks(Date date, int weeks) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.WEEK_OF_YEAR, weeks);
		return gc.getTime();
	}

	/**
	 * 将指定的天数添加到给定的日历字段中。 例: date=2007.12.1 months=2 return 2008.02.1 例:
	 * date=2007.12.1 months=-2 return 2007.10.30
	 * 
	 * @param date
	 *            指定日期
	 * @param days
	 *            时间量
	 * @return 返回修改后的日期
	 */
	public static Date addMonths(Date date, int months) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.MONTH, months);
		return gc.getTime();
	}

	// 装载当前日期所有的周的所有日期
	public static Map<Integer, Date> getWeekMap(Date date) throws Exception {
		// 找出这个更新排班所在的周一
		String searchDay = getStringDateFormat(date, yyyy_MM_dd);
		int searchDateNum = getWeekDayNum(getDateFormat(searchDay, 1));
		if (searchDateNum == 0) {
			searchDateNum = 7;
		}
		Date startDay = getNDayOfDate(getDateFormat(searchDay, 1),
				-searchDateNum + 1);
		Map<Integer, Date> weekMap = new HashMap<Integer, Date>();
		// 先设置星期一
		weekMap.put(1, startDay);
		for (int i = 1; i <= 7; i++) {
			weekMap.put(i + 1, addDays(startDay, i));
		}
		return weekMap;
	}

	public static boolean compareDate(Date date1, Date date2) {
		try {
			return ((getDays(getStringDateFormat(date1, yyyy_MM_dd),
					getStringDateFormat(date2, yyyy_MM_dd))) >= 0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 取当前时间的时
	 * */
	public static int getHour() {
		java.util.Calendar c = java.util.Calendar.getInstance();
		c.setTime(new Date());
		return c.get(java.util.Calendar.HOUR_OF_DAY);

	}

	public static int getMinute() {
		java.util.Calendar c = java.util.Calendar.getInstance();
		c.setTime(new Date());
		return c.get(java.util.Calendar.MINUTE);

	}

	public static boolean compareHour(Date sDate) {
		java.util.Calendar c = java.util.Calendar.getInstance();
		c.setTime(sDate);
		if (c.get(java.util.Calendar.HOUR_OF_DAY) < getHour())
			return true;
		if (c.get(java.util.Calendar.HOUR_OF_DAY) == getHour()
				&& c.get(java.util.Calendar.MINUTE) < getMinute())
			return true;
		return false;
	}

	/**
	 * 判断字符串是否符合日期格式
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isDate(String date) {
		Pattern p = Pattern
				.compile("([1][9][4-9][0-9])|([2][0-9][0-9][0-9])-"
						+ "(([0]?[0-9])|([1]?[0-2]))-(([0-2]?[0-9])|([3][0-1]))"
						+ "[   ](([0-1]?[0-9])|([2]?[0-3])):([0-5]?[0-9]):([0-5]?[0-9])$");
		Matcher m = p.matcher(date);
		boolean b = m.matches();
		return b;
	}

	/**
	 * 获取HH:mm
	 * 
	 * @param date
	 * @return
	 */
	public static String getHourMin(Date date) {
		String[] dateString;
		try {
			dateString = getStringDateFormat(date, HH_mm_ss).split(":");
			return dateString[0] + ":" + dateString[1];
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "";
	}

	/**
	 * 获取XX月XX日
	 * 
	 * @param date
	 * @return
	 */
	public static String getYearMonth(Date date) {
		java.util.Calendar c = java.util.Calendar.getInstance();
		c.setTime(date);
		return (c.get(Calendar.MONTH) + 1) + "月" + c.get(Calendar.DATE) + "日";
	}

	/**
	 * 获取一天的最后时间
	 * 
	 * @param date
	 * @return Date
	 */
	public static Date getDayEndTime(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.set(Calendar.HOUR_OF_DAY, 23);
		c.set(Calendar.MINUTE, 59);
		c.set(Calendar.SECOND, 59);
		c.set(Calendar.MILLISECOND, 59);
		return c.getTime();
	}
}
