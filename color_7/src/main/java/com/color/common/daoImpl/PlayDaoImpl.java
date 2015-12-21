package com.color.common.daoImpl;

import com.color.common.dao.PlayDao;
import com.color.domain.Play;
import org.springframework.stereotype.Repository;

/**
 * Created by callsure on 2015/11/12.
 */
@Repository("playDao")
public class PlayDaoImpl extends BaseDaoImpl<Play> implements PlayDao {
}
