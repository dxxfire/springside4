/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package cn.com.wtit.hspbmoms.functional.gui;

import static org.assertj.core.api.Assertions.*;

import org.junit.Test;
import org.openqa.selenium.By;
import cn.com.wtit.hspbmoms.functional.BaseSeleniumTestCase;

public class ProfileFT extends BaseSeleniumTestCase {

	/**
	 * 修改用户资料.
	 */
	@Test
	public void editProfile() {
		s.open("/profile");
		s.type(By.id("name"), "Kevin");
		s.click(By.id("submit_btn"));
		assertThat(s.isTextPresent("Kevin")).as("没有成功消息").isTrue();
	}
}