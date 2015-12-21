/**  
 * @Package： com.color.common.action
 * @FileName: IndexAction.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月9日
 */
package com.color.common.action;

import com.color.common.utils.FrontPageUtil;

/**
 * @ClassName: IndexAction
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月9日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public class IndexAction {

	  /**
	 * @Title: indexTo
	 * @Description: 返回前台首页
	 * @return
	 * @Author: linrunshu
	 */
	public String indexTo(){
	    return FrontPageUtil.FRONT_INDEX_PAGE;
	  }

}
