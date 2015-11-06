package com.color.common.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileUtils {

	// Utility
	private FileUtils() {

	}

	public static boolean exists(String fileName) {
		File file = new File(fileName);
		return file.exists();
	}

	/**
	 * 读文本文件。
	 * 
	 * @param fileName
	 *            文件名
	 * @return 文件内容
	 */
	public static String readTextFile(String fileName) {
		File file = new File(fileName);
		StringBuffer contents = new StringBuffer();
		BufferedReader reader = null;

		try {
			reader = new BufferedReader(new FileReader(file));
			String text = null;

			while ((text = reader.readLine()) != null) {
				contents.append(text).append(
						System.getProperty("line.separator"));
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if (reader != null) {
					reader.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return contents.toString();
	}

	/**
	 * 写文本文件。
	 * 
	 * @param fileName
	 *            文件名
	 * @param content
	 *            内容
	 */
	public static void writeTextFile(String fileName, String content) {
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(fileName));
			writer.write(content);
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if (writer != null) {
					writer.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}

	/**
	 * 读二进制文件，最大长度为Integer.MAX_VALUE。
	 * 
	 * @param fileName
	 *            文件名
	 * @return 文件内容
	 */
	public static byte[] readBinaryFile(String fileName) {
		File file = new File(fileName);
		if (!file.exists()) {
			throw new IllegalArgumentException("文件不存在。文件名 = [" + fileName + "]");
		}

		if (file.length() > Integer.MAX_VALUE) {
			throw new IllegalArgumentException("文件太大。文件名 = [" + fileName + "]");
		}

		BufferedInputStream bis = null;

		try {
			byte[] content = new byte[(int) file.length()];
			bis = new BufferedInputStream(new FileInputStream(fileName));
			bis.read(content);
			return content;
		} catch (IOException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if (bis != null) {
					bis.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 写二进制文件，最大长度为Integer.MAX_VALUE。
	 * 
	 * @param fileName
	 *            文件名
	 * @param content
	 *            文件内容
	 */
	public static void writeBinaryFile(String fileName, byte[] content) {
		BufferedOutputStream bos = null;

		try {
			bos = new BufferedOutputStream(new FileOutputStream(fileName));
			bos.write(content);
		} catch (IOException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if (bos != null) {
					bos.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
