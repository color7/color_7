/**  
 * @Package： com.color.front.order.action
 * @FileName: OrderAction.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月19日
 */
package com.color.front.order.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.color.common.action.ActionSupper;
import com.color.common.dto.OrderDetailDto;
import com.color.front.order.service.OrderDetailService;

/**
 * @ClassName: OrderAction
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
public class OrderAction extends ActionSupper {
	
	private Map<String, Object> responseJson;
	
	private OrderDetailService orderDetailService;
	
	public String OrderDetalList() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<OrderDetailDto> list = orderDetailService.getListOrderDetail();
		map.put("j", list);
		setResponseJson(map);
		return "success";
	}

	public Map<String, Object> getResponseJson() {
		return responseJson;
	}

	public void setResponseJson(Map<String, Object> responseJson) {
		this.responseJson = responseJson;
	}

	public OrderDetailService getOrderDetailService() {
		return orderDetailService;
	}

	@Autowired
	public void setOrderDetailService(OrderDetailService orderDetailService) {
		this.orderDetailService = orderDetailService;
	}
	
	
	
}
