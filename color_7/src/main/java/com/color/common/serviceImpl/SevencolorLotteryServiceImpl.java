/**  
 * @Package： com.color.common.serviceImpl
 * @FileName: SevencolorLotteryServiceImpl.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月13日
 */
package com.color.common.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.color.common.dao.SevencolorLotteryDao;
import com.color.common.service.SevencolorLotteryService;
import com.color.domain.SevencolorLottery;

/**
 * @ClassName: SevencolorLotteryServiceImpl
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
@Service("sevencolorLotteryService")
public class SevencolorLotteryServiceImpl implements SevencolorLotteryService {
	
	private SevencolorLotteryDao sevencolorLotteryDao;
	
	/**
	 * @Title: getIssueNumber
	 * @Description: (获取开奖期号)
	 * @return
	 * @Author: linrunshu
	 */
	@Override
	public String getIssueNumber(){
		String hql = "from SevencolorLottery sc where sc.id = (select MAX(s.lotteryId) from SevencolorLottery as s)";
		SevencolorLottery sl = this.sevencolorLotteryDao.get(hql);
		String res = sl.getIssueNumber();
		return res;
	}

	public SevencolorLotteryDao getSevencolorLotteryDao() {
		return sevencolorLotteryDao;
	}

	@Autowired
	public void setSevencolorLotteryDao(SevencolorLotteryDao sevencolorLotteryDao) {
		this.sevencolorLotteryDao = sevencolorLotteryDao;
	}
	
	

}
