package com.color.common.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * 与Class相关一些工具。
 * 
 * @author Zohar
 */
public class ClassUtils {

	// Utility
	private ClassUtils() {

	}

	public static <T> T newInstance(Class<T> clazz) {
		try {
			return clazz.newInstance();
		} catch (Exception e) {
			return null;
		}

	}

	public static <T> T newInstance(Class<T> clazz, Class<?>[] types,
			Object[] args) {
		try {
			Constructor<T> c = clazz.getConstructor(types);
			return c.newInstance(args);
		} catch (Exception e) {
			return null;
		}

	}

	/**
	 * 按类和字段名取字段，包括类及其超类。
	 * 
	 * @param clazz
	 * @param fieldName
	 * @return 如果未找到，则返回null
	 */
	public static Field findField(Class<?> clazz, String fieldName) {
		try {
			return clazz.getDeclaredField(fieldName);
		} catch (NoSuchFieldException ex) {
			if (clazz.getSuperclass() != null) {
				return findField(clazz.getSuperclass(), fieldName);
			}
			return null;
		}
	}

	/**
	 * 取指定class中指定的方法（若不存在则返回null）
	 * 
	 * @param clazz
	 *            准备分析的class
	 * @param methodName
	 *            方法名
	 * @param paramTypes
	 *            方法中的参数
	 * @return 找到的方法对象，如果不存在则返回null
	 */
	public static Method getMethodIfAvailable(Class<?> clazz,
			String methodName, Class<?>... paramTypes) {
		try {
			return clazz.getMethod(methodName, paramTypes);
		} catch (NoSuchMethodException ex) {
			return null;
		}
	}

	/**
	 * 判断指定class中是否存在指定的方法
	 * 
	 * @param clazz
	 *            准备分析的class
	 * @param methodName
	 *            方法名
	 * @param paramTypes
	 *            方法中的参数
	 * @return 是否存在相应的方法
	 */
	public static boolean hasMethod(Class<?> clazz, String methodName,
			Class<?>[] paramTypes) {
		return getMethodIfAvailable(clazz, methodName, paramTypes) != null;
	}

	/**
	 * 判断指定class是否为原生类型或原生类型的包装类
	 * 
	 * @param clazz
	 *            指定类型
	 * @return 是否为原生类型或原生类型的包装类
	 */
	public static boolean isPrimitiveWrap(Class<?> clazz) {
		try {
			return ((Class<?>) clazz.getField("TYPE").get(null)).isPrimitive();
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 与instanceof关键字等效，但使用类名做参数，其作用是避免jar依赖性。
	 * 
	 * @param cls
	 *            类型
	 * @param className
	 *            接口或类型的类名
	 * @return 是否是指定类名的实例？
	 */
	public static boolean isInstanceOf(Class<?> cls, String className) {
		if (cls == null) {
			return false;
		}
		if (cls.getName().equals(className)) {
			return true;
		}

		Class<?>[] interfaceClasses = cls.getInterfaces();
		for (Class<?> c : interfaceClasses) {
			if (isInstanceOf(c, className)) {
				return true;
			}
		}
		return isInstanceOf(cls.getSuperclass(), className);
	}

}
