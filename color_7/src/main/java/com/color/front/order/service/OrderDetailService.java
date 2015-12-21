/**  
 * @Package： com.color.front.order.service
 * @FileName: OrderDetailService.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月13日
 */
package com.color.front.order.service;

import java.util.List;

import com.color.common.dto.OrderDetailDto;
import com.color.domain.Order;
import com.color.domain.OrderDetail;


/**
 * @ClassName: OrderDetailService
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月13日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public interface OrderDetailService {
	
	public void addOrderDetail(OrderDetail odd,Order order);
	
	public List<OrderDetailDto> getListOrderDetail();
	
	

}
