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

	public static void copyFile(File source, File destiny) {
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		FileOutputStream fos = null;
		BufferedOutputStream bos = null;

		try {
			fis = new FileInputStream(source);
			bis = new BufferedInputStream(fis);

			fos = new FileOutputStream(destiny);
			bos = new BufferedOutputStream(fos);

			byte[] b = new byte[2048];
			int len = bis.read(b);
			while (len >= 0) {
				bos.write(b, 0, len);
				len = bis.read(b);
			}
			bos.flush();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (fis != null) {
					fis.close();
				}
				if (fos != null) {
					fos.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

	/**
	 * 根据年月日创建文件夹
	 * 
	 * @return
	 * @throws Exception 
	 */
	public static String makeDirByDate() throws Exception {
		StringBuffer uploadPath = new StringBuffer();
		uploadPath.append(DateUtils.getNowDate(DateUtils.yyyy_MM_dd));
		// 从配置文件中读取
		File file = new File(ConfigUtil.get("uploadPath")
				+ uploadPath.toString());
		file.mkdirs();
		uploadPath.append("/");
		return uploadPath.toString();
	}

	/**
	 * 根据年月日创建文件夹
	 * 
	 * @return
	 * @throws Exception 
	 */
	public static String makeDirByDate(String servletContextPath) throws Exception {
		StringBuffer uploadPath = new StringBuffer();
		uploadPath.append(DateUtils.getNowDate(DateUtils.yyyy_MM_dd));
		// 从配置文件中读取
		File file = new File(servletContextPath + uploadPath.toString());
		file.mkdirs();
		uploadPath.append("/");
		return uploadPath.toString();
	}

	/**
	 * 获取文件扩展名
	 * 
	 * @param filename
	 * @return
	 */
	public static String getExtensionName(String filename) {
		if ((filename != null) && (filename.length() > 0)) {
			int dot = filename.lastIndexOf('.');
			if ((dot > -1) && (dot < (filename.length() - 1))) {
				return filename.substring(dot + 1);
			}
		}
		return filename;
	}

	/**
	 * 获取不带扩展名的文件名
	 * 
	 * @param filename
	 * @return
	 */
	public static String getFileNameNoEx(String filename) {
		if ((filename != null) && (filename.length() > 0)) {
			int dot = filename.lastIndexOf('.');
			if ((dot > -1) && (dot < (filename.length()))) {
				return filename.substring(0, dot);
			}
		}
		return filename;
	}

}
