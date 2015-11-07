package com.color.common.utils;


/**
 * 上下文环境工具类
 * 
 * @author Zohar
 * 
 */
public class ContextUtils {
	/**
	 * 定义三个ThreadLocal(线程变量)保存用户的基础信息,对应的组织,角色
	 * 
	 * private static ThreadLocal<?> curUser = new ThreadLocal<?>();
	 * 问号是dto
	 * 
	 * */



	/**
	 * 取得当前登录的用户。
	 * 
	 * <pre>
	 * 1.首先尝试从线程变量中获取获取当前用户
	 * 
	 * 2.如果没有获取到则从登录用户中进行获取
	 * 未实现
	 * 
	 * <pre>
	 * @return
	 */




	/**
	 * 设置当前用户的组织
	 * 未实现
	 * 
	 * @param orgId
	 */
	public static void setCurrentOrg(int orgId) {
	}



	/**
	 * 设置当前组织
	 * 
	 * @param
	 */

	/**
	 * 清除所有的线程变量
	 */
	public static void clearAll() {
	}

	/**
	 * 获取当前用户所有角色id
	 * 未实现
	 * 
	 * @return
	 */
	public static int[] getCurrentUserRoleIds() {
		return null;
	}

	/**
	 * 获取当前用户所有角色别名[alias]
	 * 未实现
	 * 
	 * @return
	 */
	public static String[] getCurrentUserRoleAlias() {
		return null;
	}

}
