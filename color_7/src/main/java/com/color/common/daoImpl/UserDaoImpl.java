package com.color.common.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.color.common.dao.UserDao;
import com.color.common.dto.UserDto;
import com.color.domain.HonorLimit;
import com.color.domain.User;

/**
 * @ClassName: UserDaoImpl
 * @Description: (这里用一句话描述这个类的作用)
 * @author 林润树
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年11月5日   @callsure		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
	
	@Override
	public User getUserAccount(UserDto userDto) {
		Criteria crit = this.getCurrentSession().createCriteria(User.class);
		return (User) crit.add(Restrictions.eq("userAccount", userDto.getUserAccount())).uniqueResult();
//		String hql = "from User where userAccount = :userAccount";
//		Map<String, Object> params = new HashMap<String, Object>();
//		params.put("userAccount", userVo.getUserAccount());
//		User user = (User) this.get(hql, params);
//		return user;
	}
	
	@Override
	public User getUserLogin(UserDto userDto){
		Criteria crit = this.getCurrentSession().createCriteria(User.class);
		return (User) crit.add(Restrictions.eq("userAccount", userDto.getUserAccount()))
				.add(Restrictions.eq("userPassword", userDto.getUserPassword())).uniqueResult();
	}
	
	@Override
	public User getUserByUid(UserDto userDto){
		Criteria crit = this.getCurrentSession().createCriteria(User.class);
		return (User) crit.add(Restrictions.eq("uid", userDto.getUid())).uniqueResult();
	}
	
	@Override
	public HonorLimit getHonorByUser(Integer userId){
		User user = new User();
		user.setUserId(userId);
		HonorLimit honorLimit = new HonorLimit();
		honorLimit.setUser(user);
		Criteria crit = this.getCurrentSession().createCriteria(HonorLimit.class);
		return (HonorLimit) crit.add(Example.create(honorLimit)).uniqueResult();
	}
	
}
