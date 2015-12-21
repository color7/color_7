/**  
 * @Package： com.color.common.daoImpl
 * @FileName: HonorLimitDaoImpl.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月19日
 */
package com.color.common.daoImpl;

import org.springframework.stereotype.Repository;

import com.color.common.dao.HonorLimitDao;
import com.color.domain.HonorLimit;

/**
 * @ClassName: HonorLimitDaoImpl
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月19日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
@Repository("honorLimitDao")
public class HonorLimitDaoImpl extends BaseDaoImpl<HonorLimit> implements HonorLimitDao {

}
