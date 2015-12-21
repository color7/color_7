package com.color.front.twoNumber.serviceImpl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.color.common.dao.HonorLimitDao;
import com.color.common.dao.TwoNumberDao;
import com.color.common.dto.TwoNumberDto;
import com.color.common.dto.UserDto;
import com.color.common.service.SevencolorLotteryService;
import com.color.common.utils.GetRequestUtil;
import com.color.common.utils.JsonBean;
import com.color.common.utils.OddNumbers;
import com.color.domain.HonorLimit;
import com.color.domain.Order;
import com.color.domain.OrderDetail;
import com.color.domain.TwoDefaultOdds;
import com.color.domain.TwoNumber;
import com.color.domain.User;
import com.color.front.order.service.OrderDetailService;
import com.color.front.order.service.OrderService;
import com.color.front.twoNumber.service.TwoNumberService;

@Service("twoNumberFrontService")
public class TwoNumberServiceImpl implements TwoNumberService {

	private TwoNumberDao twoNumberDao;

	private OrderService orderService;

	private OrderDetailService orderDetailService;

	private SevencolorLotteryService sevencolorLotteryService;
	
	private HonorLimitDao honorLimitDao;

	public JsonBean addTwoNumber() {
		JsonBean jb = new JsonBean();
		for (int i = 0; i < 100; i++) {
			String u = "0" + i + "XXX";
			TwoNumber tn = new TwoNumber();
			tn.setCurrentOdds(new BigDecimal(90));
			tn.setDefaultOdds(new BigDecimal(95));
			tn.setNumberName(u);
			tn.setTwoDefaultOdds(new TwoDefaultOdds(1));
			this.twoNumberDao.save(tn);
		}
		jb.setSuccess(true);
		jb.setMsg("1");
		return jb;
	}

	@Transactional
	public JsonBean updateTwoNumber() {
		JsonBean jb = new JsonBean();
		String hql = "from TwoNumber tn where tn.twoDefaultOdds.twoDefaultOddsId = :twoDefaultOddsId";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("twoDefaultOddsId", 6);
		List<TwoNumber> l = this.twoNumberDao.find(hql, params);
		int i = 0;
		int j = 0;
		for (TwoNumber tn : l) {
			String k = i + "" + j;
			tn.setNono(k);
			tn.setDefaultOdds(new BigDecimal(95));
			j++;
			if (j == 10) {
				j = 0;
				i++;
			}
			twoNumberDao.update(tn);
		}
		// TwoNumber tn = new TwoNumber();
		// tn.setNono("01");
		// tn.setCurrentOdds(new BigDecimal(900));
		// tn.setDefaultOdds(new BigDecimal(95));
		// tn.setTwoNumberId(2);
		// tn.setTwoDefaultOdds(new TwoDefaultOdds(1));
		// tn.setNumberName("01XX");
		// this.twoNumberDao.update(tn);
		jb.setSuccess(true);
		jb.setMsg("1");
		return jb;
	}

	/**
	 * 
	 * @Title: getTwoNumberList
	 * @Description: (获取二字定赔率)
	 * @param numId
	 * @return
	 * @Author: linrunshu
	 */
	@Override
	public List<TwoNumberDto> getTwoNumberList(Integer numId) {
		JsonBean jb = new JsonBean();
		jb = updateTwoNumber();
		List<TwoNumberDto> list = new ArrayList<TwoNumberDto>();
		String hql = "from TwoNumber tn where tn.twoDefaultOdds.twoDefaultOddsId = :twoDefaultOddsId order by nono asc";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("twoDefaultOddsId", numId);
		List<TwoNumber> l = this.twoNumberDao.find(hql, params);
		if ((l != null) && (l.size() > 0)) {
			for (TwoNumber tn : l) {
				TwoNumberDto tnd = new TwoNumberDto();
				BeanUtils.copyProperties(tn, tnd);
				if (tn.getTwoDefaultOdds() != null) {
					BeanUtils.copyProperties(tn.getTwoDefaultOdds(), tnd);
				}
				list.add(tnd);
			}
		}
		return list;
	}

	@Transactional
	public JsonBean saveOrUpdateTwoNumber(String nums, int play, int playgroup,
			String betpath, BigDecimal money) {
		Order order = new Order();
		OrderDetail odd = new OrderDetail();
		Date date = new Date();
		String issueNumber = sevencolorLotteryService.getIssueNumber();
		String[] num = nums.split(",");
		UserDto u = GetRequestUtil.getLoginUserDto();

		JsonBean jb = new JsonBean();
		jb.setMsg("下注"+num.length+"号码成功!");
		jb.setSuccess(true);
		
		String hql = "from HonorLimit hl where hl.user.userId = "+u.getUserId();
		HonorLimit hl = honorLimitDao.get(hql);
		if(hl.getResidueHonorLimit() < (money.intValue()*num.length)){
			jb.setMsg("信用额度不足!");
			jb.setSuccess(false);
			return jb;
		}
		hl.setResidueHonorLimit(u.getResidueHonorLimit()-(money.intValue()*num.length));
		hl.setUsedHonorLimit(u.getUsedHonorLimit()+(money.intValue()*num.length));
		honorLimitDao.saveOrUpdate(hl);
		
		order.setOrderNumerical(OddNumbers.getOrderNumber());
		order.setUser(new User(u.getUserId()));
		order.setOrderTime(date);
		order.setIssueNumber(issueNumber);
		order.setPlayId(play);
		order.setPlayGroupId(playgroup);
		order.setBetPath(betpath);

		try {
			order = orderService.addOrder(order);

			for (int i = 0; i < num.length; i++) {
				odd.setOrder(order);
				odd.setOrderMoney(money);
				odd.setOrderNumber(num[i]);
				odd.setOrderStatus((short) 1);
				odd.setIsWinning((short) 0);
				odd.setOrderOdds(new BigDecimal(90));
				orderDetailService.addOrderDetail(odd, order);
			}
		} catch (Exception e) {
			e.printStackTrace();
			jb.setMsg("下注失败!");
			jb.setSuccess(false);
		}
		return jb;
	}

	public TwoNumberDao getTwoNumberDao() {
		return this.twoNumberDao;
	}

	@Autowired
	public void setTwoNumberDao(TwoNumberDao twoNumberDao) {
		this.twoNumberDao = twoNumberDao;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	@Autowired
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public OrderDetailService getOrderDetailService() {
		return orderDetailService;
	}

	@Autowired
	public void setOrderDetailService(OrderDetailService orderDetailService) {
		this.orderDetailService = orderDetailService;
	}

	public SevencolorLotteryService getSevencolorLotteryService() {
		return sevencolorLotteryService;
	}

	@Autowired
	public void setSevencolorLotteryService(
			SevencolorLotteryService sevencolorLotteryService) {
		this.sevencolorLotteryService = sevencolorLotteryService;
	}

	public HonorLimitDao getHonorLimitDao() {
		return honorLimitDao;
	}

	@Autowired
	public void setHonorLimitDao(HonorLimitDao honorLimitDao) {
		this.honorLimitDao = honorLimitDao;
	}

}
