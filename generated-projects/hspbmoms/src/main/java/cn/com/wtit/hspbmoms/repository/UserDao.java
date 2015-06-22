/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package cn.com.wtit.hspbmoms.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import cn.com.wtit.hspbmoms.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
