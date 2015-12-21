/**  
 * @Package： com.color.front.order.serviceImpl
 * @FileName: OrderDetailServiceImpl.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月13日
 */
package com.color.front.order.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.color.common.dao.OrderDetailDao;
import com.color.common.dto.OrderDetailDto;
import com.color.common.dto.UserDto;
import com.color.common.service.SevencolorLotteryService;
import com.color.common.utils.GetRequestUtil;
import com.color.domain.Order;
import com.color.domain.OrderDetail;
import com.color.front.order.service.OrderDetailService;
import com.color.front.order.service.OrderService;

/**
 * @ClassName: OrderDetailServiceImpl
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
@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService{
	
	private OrderService orderService;
	
	private OrderDetailDao orderDetailDao;
	
	private SevencolorLotteryService sevencolorLotteryService;
	
	@Transactional
	public void addOrderDetail(OrderDetail odd,Order order){
		this.orderDetailDao.save(odd);
	}
	
	@Override
	public List<OrderDetailDto> getListOrderDetail() {
		String issueNumber = sevencolorLotteryService.getIssueNumber();
		UserDto u = GetRequestUtil.getLoginUserDto();
		
		List<OrderDetailDto> list = new ArrayList<OrderDetailDto>();
		Map<String, Object> params = new HashMap<String, Object>();
		String hql = "from OrderDetail o where o.order.user.uid = :uid and o.order.issueNumber = :issueNumber";
		params.put("uid", u.getUid());
		params.put("issueNumber", issueNumber);
		List<OrderDetail> ls = orderDetailDao.find(hql, params);
		if(ls != null && ls.size()>0) {
			for(OrderDetail od : ls) {
				OrderDetailDto odd = new OrderDetailDto();
				BeanUtils.copyProperties(od, odd);
				if(od.getOrder() != null) {
					BeanUtils.copyProperties(od.getOrder(), odd);
				}
				list.add(odd);
			}
		}
		return list;
	}
	

	public OrderService getOrderService() {
		return orderService;
	}

	@Autowired
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public OrderDetailDao getOrderDetailDao() {
		return orderDetailDao;
	}

	@Autowired
	public void setOrderDetailDao(OrderDetailDao orderDetailDao) {
		this.orderDetailDao = orderDetailDao;
	}

	public SevencolorLotteryService getSevencolorLotteryService() {
		return sevencolorLotteryService;
	}

	@Autowired
	public void setSevencolorLotteryService(
			SevencolorLotteryService sevencolorLotteryService) {
		this.sevencolorLotteryService = sevencolorLotteryService;
	}

}
