package com.color.common.utils;

import java.util.UUID;

/**
 * @author Zohar
 */
public class UuidUtils {
	/**
	 * 生成uuid
	 * 
	 * @return uuid
	 */
	public static String getUuid() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replace("-", "");
	}
}
